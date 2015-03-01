#!/bin/bash

if [ $EUID != 0 ]; then
	echo "this script must be run as root"
	echo ""
	echo "usage:"
	echo "su -"
	echo "./install_dependencies.sh"
	exit $exit_code
   exit 1
fi

apt-get update


echo "installing GPredict-osc dependencies"
apt-get install automake libtool libgtk2.0-dev  libcurl4-gnutls-dev libgoocanvas-dev liblo-dev libgdk-pixbuf2.0-dev wmctrl
exit_code=$?
if [ $exit_code != 0 ]; then
    echo "error installing dependencies, there could be an error with your internet connection"
    exit $exit_code
fi

echo "installing Puredata and externals"
apt-get install puredata gem pd-OSC pd-cyclone pd-unauthorized pd-zexy pd-motex pd-iemlib pd-ggee pd-mapping pd-freeverb
exit_code=$?
if [ $exit_code != 0 ]; then
	echo "error installing Puredata, there could be an error with your internet connection"
	exit $exit_code
fi

