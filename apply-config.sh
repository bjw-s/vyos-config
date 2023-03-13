#!/bin/vbash
# shellcheck shell=bash
# shellcheck source=/dev/null
dry_run=false

if [ "$(id -g -n)" != 'vyattacfg' ] ; then
    exec sg vyattacfg -c "/bin/vbash $(readlink -f "$0") $@"
fi

while getopts "d" options; do
  case "${options}" in
    d)
      dry_run=true
      ;;
    *)
      echo 'error in command line parsing' >&2
      exit 1
      ;;
  esac
done

# Load secrets into ENV vars
if [ -f "/config/secrets.sops.env" ]; then
  export SOPS_AGE_KEY_FILE=/config/secrets/age.key

  mapfile environmentAsArray < <(
    sops --decrypt "/config/secrets.sops.env" \
      | grep --invert-match '^#' \
        | grep --invert-match '^\s*$'
  ) # Uses grep to remove commented and blank lines
  for variableDeclaration in "${environmentAsArray[@]}"; do
    export "${variableDeclaration//[$'\r\n']}" # The substitution removes the line breaks
  done
fi

# Include VyOS specific functions and aliases
source /opt/vyatta/etc/functions/script-template

# Reset the configuration
load /opt/vyatta/etc/config.boot.default

# Load all config files
for f in /config/config-parts/*.sh
do
  if [ -f "${f}" ]; then
    echo "Processing ${f}"
    source "${f}"
  fi
done

if "$dry_run"; then
  # Show what's different from the running config
  compare
else
  # Pull new container images
  AVAILABLE_IMAGES=($(run show container image | awk '{ if ( NR > 1  ) { print $1 ":" $2} }'))
  CONFIG_IMAGES=($(sed -nr "s/set container name .* image '(.*)'/\1/p" /config/config-parts/* | uniq))

  for image in "${CONFIG_IMAGES[@]}"
  do
    if [[ ! " ${AVAILABLE_IMAGES[*]} " =~ " ${image} " ]]; then
      echo "Pulling image ${image}"
      run add container image "${image}"
    fi
  done

  # Commit and save
  echo "Committing and saving config"
  commit
  save

  # Clean obsolete container images
  IFS=$'\n' read -rd '' -a AVAILABLE_IMAGES <<<"$(run show container image | tail -n +2)"
  for image in "${AVAILABLE_IMAGES[@]}"
  do
    image_name=$(echo "${image}" | awk '{ print $1 }')
    image_tag=$(echo "${image}" | awk '{ print $2 }')
    image_id=$(echo "${image}" | awk '{ print $3 }')
    image_name_tag="${image_name}:${image_tag}"

    if [[ ! " ${CONFIG_IMAGES[*]} " =~ " ${image_name_tag} " ]]; then
      echo "Removing container ${image_name_tag}"
      run delete container image "${image_id}"
    fi
  done
fi

exit
