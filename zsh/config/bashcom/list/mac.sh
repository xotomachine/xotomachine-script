#!/bin/bash

# OPEN RENAME
function ba.brename() { echo ''open -a "A Better Finder Rename 10"; }

# UNMOUNT SHUTDOWN
function ba.off() {
	echo osascript -e 'tell application "System Events" to shut down'
	osascript -e 'tell application "System Events" to shut down'
}

# OPEN DEAMON
function ba.deamon() {
	launchctl list
}

# WRITE TO FILE
function ba.write() {
	write=$1
	touch ./text.txt
	echo ${write} >>./text.txt
}
