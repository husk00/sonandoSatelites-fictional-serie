# sonandoSatelites-fictional-serie
Soñando Satelites - fictional series is a interactive art installation in which real time data retrived from real and fictional satellites is used to create a soundscape



This works is meant to present with Gpredict on the front while puredata audio engine is running in the background.


# HOW TO USE AND SETUP 

# DEPENDECIES 

liblo-dev, puredata (I'm using vanilla) and some external already packaged for debian: pd-OSC; pd-cyclone, pd-unauthorized; pd-zexy; pd-motex; pd-iemlib;pd-ggee; pd-mapping; pd-freeverb;

You can use install_dependencies.sh script in the scripts/ dir. It should install (almost) all you need.
You MUST run it as sudo:

sudo ./install_dependencies.sh

note: this installation is meant to run on a ubuntu 14.04 machine with unity8 as WM. If you are using others WM (or system) is not a big deal. You have just to make a little correction to the launch script which use wmctrl program to move windows through workspaces.

MEDIA:
All media files used are not included in this repo. You can downoad it from http://estereotips.net/release/sounds/

download it you MUST put all the wav files inside audioEngine/sounds/

# COMPILING GPredict-OSC 

This version of Gpredict is a very dirty hack based on another (very) dirty hack originally from David Pello - https://github.com/ladecadence/GPredict---OSC

Basically this version sends satellite data on localhost to port 7770 and information about visibility from defined groundstation (true | false) on localhost to port 9999. At the moment this configuration is hardcoded; so you have to change it in the code and recompile in order to change that.

Once you are in Gpredict-osc dir type:
./autogen.sh
./configure
make
sudo make install

If its stop take a look to the error, robally you are missing some library. install_dependencies.sh script try to install them all but I'm not sure.



# RUN SOÑADO SATELITES FICTIONAL SERIES

from scripts/ dir type:

sh ./launch.sh


This scripts basically check if Gpredict and Puredata are running, and if not it launch them one for every workspace. 
Note: Unity( doesn't have real workspace, but it use viewports. At the moment the script expect a resolution of 1366x768. If you have another resolution you maybe want to change line 12:
wmctrl -o 1366,0  


