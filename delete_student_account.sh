#!/bin/sh

DATE=`date "+%Y-%m-%d %H:%M:%S"`

# Log results
echo ${DATE} - "Deleting student home directory >> "/Library/Logs/deleted user accounts.log""
    
rm -Rf /Users/student/Desktop/*
rm -Rf /Users/student/Documents/*
rm -Rf /Users/student/Downloads/*
rm -Rf /Users/student/Movies/*
rm -Rf /Users/student/Music/*
rm -Rf /Users/student/Pictures/*
rm -Rf /Users/student/Public/*
rm -Rf /Users/student/Library/Application\ Support/Google/Chrome
rm -Rf /Users/student/Library/Safari/History*
rm -rf /Users/student/Library/Safari/RecentlyClosedTabs.plist
rm -rf /Users/student/Library/Safari/LastSession.plist
rm -rf /Users/student/.Trash/*

exit 0
