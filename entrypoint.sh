#!/usr/bin/env bash
# Entrypoint script used by Dockerfile.

# Initialize.
[ -n "$OPT_VERBOSE" ] && echo "Loading ${BASH_SOURCE[0]}... " >&2

# Show variables.
set

# Load shell functions.
source /opt/scripts/.funcs.cmds.inc.sh

# Install platform.
install_mt
