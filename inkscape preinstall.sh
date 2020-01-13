#!/bin/bash

#check if Xquartz is installed if not, install

if [ -d /Applications/Utilities/XQuartz.app ]
then 
	echo "Xquartz found installing inkscape"
else
	echo "Xquartz not found, installing now"
	jamf displayMessage -message "Inkscape needs Xquarts in order to run, please click ok to proceed installing Xquartz"
	jamf policy -trigger xquartz
    

fi	

exit 0
