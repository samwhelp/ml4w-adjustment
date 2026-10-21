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
### Head: util_package
##

util_package_find_list () {
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

main_package_find_list () {
	util_package_find_list "package-list.txt"
}

main_package_find_list_raw () {
	cat "package-list.txt"
}

##
### Tail: util_package
################################################################################


################################################################################
### Head: Model / model_package_install
##

model_package_install () {

	##
	## ## Debian or Ubuntu
	##

	# sudo apt-get install $(cat package-list.txt)
	# sudo apt-get install $(main_package_find_list_raw)
	# sudo apt-get install $(main_package_find_list)


	##
	## ## Arch or Manjaro
	##

	# sudo pacman -Sy --needed $(cat package-list.txt)
	# sudo pacman -Sy --needed $(main_package_find_list_raw)
	sudo pacman -Sy --needed $(main_package_find_list)
	# pamac install $(main_package_find_list)
	# pamac build $(main_package_find_list)
	# yay -Sy --needed $(main_package_find_list)


	##
	## ## Fedora
	##

	# sudo dnf install $(cat package-list.txt)
	# sudo dnf install $(main_package_find_list_raw)
	# sudo dnf install $(main_package_find_list)

	return 0
}

##
### Tail: Model / model_package_install
################################################################################


################################################################################
### Head: Portal / portal_package_install
##

portal_package_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## portal_package_install"
	util_error_echo "##"
	util_error_echo




	model_package_install




	return 0
}

##
### Tail: Portal / portal_package_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_package_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
