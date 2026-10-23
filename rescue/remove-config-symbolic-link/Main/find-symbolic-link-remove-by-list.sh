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
### Head: Model Path
##

DEFAULT_MASTER_DIR_PATH="${HOME}"
REF_MASTER_DIR_PATH="${REF_MASTER_DIR_PATH:=$DEFAULT_MASTER_DIR_PATH}"

##
### Tail: Model Path
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
### Head: util_package
##

util_master_find_list () {
	local file_path="$1"
	cat $file_path  | while IFS='' read -r line; do
		trim_line=$(echo $line) # trim

		## https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
		## ignore leading #
		if [ "${trim_line:0:1}" == '#' ]; then
			continue;
		fi

		## ignore empty line
		if [[ -z "$trim_line" ]]; then
			continue;
		fi

		echo "$line"
	done
}

main_master_find_list () {
	util_master_find_list "symbolic-link-remove-list.txt"
}

main_master_find_list_raw () {
	cat "symbolic-link-remove-list.txt"
}

##
### Tail: util_package
################################################################################


################################################################################
### Head: Model / model_master_install
##

model_master_install () {

	##
	## ## Remove Symbolic Link
	##

	local master_dir_path="${REF_MASTER_DIR_PATH}"


	local master_list=""
	local target_item=""
	local target_path=""


	local src_path=""
	local des_path=""


	master_list=$(main_master_find_list)

	for target_item in ${master_list}; do
		target_path="${master_dir_path}/${target_item}"
		if [ -L ${target_path} ]; then
			echo "${target_path}"
		fi
	done




	return 0
}

##
### Tail: Model / model_master_install
################################################################################


################################################################################
### Head: Portal / portal_master_install
##

portal_master_install () {

	# util_error_echo
	# util_error_echo "##"
	# util_error_echo "## ## portal_master_install"
	# util_error_echo "##"
	# util_error_echo




	model_master_install




	return 0
}

##
### Tail: Portal / portal_master_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_master_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
