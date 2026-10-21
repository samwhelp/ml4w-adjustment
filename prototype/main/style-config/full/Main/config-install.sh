#!/usr/bin/env bash

set -e


################################################################################
### Head: style
##

style_config_install () {

	echo
	echo "##"
	echo "## Config: style"
	echo "##"
	echo


	style_config_install_by_dir

	#style_config_install_by_each_file


	echo

}

style_config_install_by_dir () {

	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}/."
	cp -rf ./asset/overlay/etc/skel/. ${HOME}/.


	return


	echo
	echo "sudo mkdir -p /etc/skel"
	sudo mkdir -p "/etc/skel"


	echo
	echo "sudo cp -rfT ./asset/overlay/etc/skel /etc/skel"
	sudo cp -rfT "./asset/overlay/etc/skel" "/etc/skel"


}

style_config_install_by_each_file () {


	echo
	echo "sudo mkdir -p /usr/share/icons/default"
	sudo mkdir -p "/usr/share/icons/default"

	echo
	echo "sudo install -Dm644 ./asset/overlay/usr/share/icons/default/index.theme /usr/share/icons/default/index.theme"
	sudo install -Dm644 "./asset/overlay/usr/share/icons/default/index.theme" "/usr/share/icons/default/index.theme"


}

##
### Tail: style
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	style_config_install

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
