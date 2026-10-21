#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Bash
##

set -e						## exit on error
set -o pipefail				## exit on pipeline error
set -u						## treat unset variable as error

##
### Tail: Bash
################################################################################


################################################################################
### Head: Init
##

REF_CMD_FILE_NAME="$(basename "${0}")"
REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
#REF_INIT_DIR_PATH="${REF_BASE_DIR_PATH}/../ext"
#. "${REF_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {

	echo "${@}" 1>&2

}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Model / model_asset_install
##

model_asset_install () {


	return 0
}

##
### Tail: Model / model_asset_install
################################################################################


################################################################################
### Head: Portal / portal_asset_install
##

portal_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## portal_asset_install"
	util_error_echo "##"
	util_error_echo




	util_error_echo
	util_error_echo "## > Do Nothing"
	util_error_echo

	#model_asset_install




	return 0
}

##
### Tail: Portal / portal_asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_asset_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
