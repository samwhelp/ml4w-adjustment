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
### Head: Model / model_change_shell
##

mod_change_shell_to_bash () {

util_error_echo "sudo chsh -s /usr/bin/bash $(whoami)"
	sudo chsh -s /usr/bin/bash "$(whoami)"

	return 0
}

mod_change_shell_to_fish () {

	util_error_echo "sudo chsh -s /usr/bin/fish $(whoami)"
	sudo chsh -s /usr/bin/fish "$(whoami)"

	return 0
}

mod_change_shell_to_zsh () {

	util_error_echo "sudo chsh -s /usr/bin/zsh $(whoami)"
	sudo chsh -s /usr/bin/zsh "$(whoami)"

	return 0
}

##
### Tail: Model / model_change_shell
################################################################################


################################################################################
### Head: Portal / portal_change_shell
##

portal_change_shell () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## portal_change_shell"
	util_error_echo "##"
	util_error_echo




	#mod_change_shell_to_bash
	mod_change_shell_to_fish
	#mod_change_shell_to_zsh




	return 0
}

##
### Tail: Portal / portal_change_shell
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_change_shell "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
