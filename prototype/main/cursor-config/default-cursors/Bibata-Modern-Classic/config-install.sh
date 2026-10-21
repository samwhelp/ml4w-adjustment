#!/usr/bin/env bash

set -e


################################################################################
### Head: cursor
##

cursor_config_install () {

	echo
	echo "##"
	echo "## Config: cursor"
	echo "##"
	echo


	#cursor_config_install_by_dir

	cursor_config_install_by_each_file


	echo

}

cursor_config_install_by_dir () {


	echo
	echo "sudo mkdir -p /usr/share/icons/default"
	sudo mkdir -p "/usr/share/icons/default"


	echo
	echo "sudo cp -rfT ./asset/overlay/usr/share/icons/default /usr/share/icons/default"
	sudo cp -rfT "./asset/overlay/usr/share/icons/default" "/usr/share/icons/default"


}

cursor_config_install_by_each_file () {


	echo
	echo "sudo mkdir -p /usr/share/icons/default"
	sudo mkdir -p "/usr/share/icons/default"

	echo
	echo "sudo install -Dm644 ./asset/overlay/usr/share/icons/default/index.theme /usr/share/icons/default/index.theme"
	sudo install -Dm644 "./asset/overlay/usr/share/icons/default/index.theme" "/usr/share/icons/default/index.theme"


}

##
### Tail: cursor
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	cursor_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
