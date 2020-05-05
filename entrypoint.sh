#!/usr/bin/env bash
# Entrypoint script used by Dockerfile.

# Initialize.
set -e
[ -n "$INPUT_OPTVERBOSE" ] && echo "Loading ${BASH_SOURCE[0]}... " >&2
[ -n "$INPUT_OPTVERBOSE" ] && echo "$USER"
[ -n "$INPUT_OPTVERBOSE" ] && cat /etc/passwd
[ -n "$INPUT_OPTVERBOSE" ] && groups
[ -n "$INPUT_OPTVERBOSE" ] && id && set
[ -n "$INPUT_OPTVERBOSE" ] && tree -sup /github /home /opt

# Fix HOME folder permissions.
[ ! -w "$HOME" ] && {
  sudo chown -vR "$USER" "$HOME"
}

# Load shell functions.
# shellcheck disable=SC1091
source /opt/scripts/.funcs.cmds.inc.sh

# Install platform.
cd "$HOME"
install_mt "$INPUT_MTVERSION"
