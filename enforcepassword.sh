#!/bin/bash

LoggedInUser=`who | grep console | awk '{print $1}'`
now=`date`

if [ "$LoggedInUser" == "" ]; then
    echo "No Logged in User" > /Library/Application\ Support/JAMF/password.txt
else
        RESPONSE=`/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -windowType hud -lockhud -heading "Password change" -description "Your password needs to be set, please click change to set!" -button1 "Change"`

        if [ "$RESPONSE" == "0" ]; then
        open /System/Library/PreferencePanes/Accounts.prefPane/
        else
            echo "$LoggedInUser chose Cancel on $HOSTNAME at $now" > /Library/Application\ Support/JAMF/password.txt
        fi
fi
exit
