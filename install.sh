#!/bin/bash -e

SYSTEMDOCKER_COMMON_DIR="$(dirname "$(readlink -f "$0")")"
SYSTEMDOCKER_DEFAULTS=/etc/default/systemdocker

SYSTEMDOCKER_DEFAULTS_TEMPLATE="${SYSTEMDOCKER_COMMON_DIR}/env/systemdocker"

SUDO=sudo

if [ -e "${SYSTEMDOCKER_DEFAULTS}" ]; then
	>&2 echo "${SYSTEMDOCKER_DEFAULTS} already exists, backing up to ${SYSTEMDOCKER_DEFAULTS}.bak"
	if [ -e "${SYSTEMDOCKER_DEFAULTS}.bak" ]; then
		>&2 echo "${SYSTEMDOCKER_DEFAULTS}.bak already exists, cannot proceed."
		exit 1
	fi
	$SUDO mv ${SYSTEMDOCKER_DEFAULTS} ${SYSTEMDOCKER_DEFAULTS}.bak
fi
# TODO: Merge with existing rather than overwriting.
$SUDO cp "${SYSTEMDOCKER_DEFAULTS_TEMPLATE}" "${SYSTEMDOCKER_DEFAULTS}"
# TODO: Replace SYSTEMDOCKER_COMMON_DIR in SYSTEMDOCKER_DEFAULTS with value from this script.
