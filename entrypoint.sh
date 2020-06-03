#!/usr/bin/env bash
# Entrypoint script used by Dockerfile.

# Initialize.
set -e
[ -n "$INPUT_OPTVERBOSE" ] && echo "Loading ${BASH_SOURCE[0]}... " >&2
[ -n "$INPUT_OPTVERBOSE" ] && id && set

# Load shell functions.
# shellcheck disable=SC1091
source /opt/scripts/.funcs.cmds.inc.sh

# Install platform.
install_mt "$INPUT_MTVERSION" "$INPUT_MTDEST"

# Run backtest.
run_backtest -v
