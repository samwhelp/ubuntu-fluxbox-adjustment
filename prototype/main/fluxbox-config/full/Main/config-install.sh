#!/usr/bin/env bash

set -e


################################################################################
### Head: fluxbox
##

fluxbox_config_run_pre () {

	fluxbox_service_stop


	return 0

}

fluxbox_config_run_post () {

	fluxbox_service_start


	return 0

}

fluxbox_service_stop () {

	fluxbox_service_stop_xfconfd

	#fluxbox_service_stop_xfsettingsd


	return 0

}

fluxbox_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

fluxbox_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

fluxbox_service_start () {


	return 0

}

fluxbox_config_install () {

	echo
	echo "##"
	echo "## Config: fluxbox"
	echo "##"
	echo


	fluxbox_config_install_by_dir


	echo

}

fluxbox_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: fluxbox
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	fluxbox_config_run_pre

	fluxbox_config_install

	fluxbox_config_run_post

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
