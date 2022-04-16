#!/bin/bash

# RENAME LOWERCASE
function rlower() {
	rename -f 'y/A-Z/a-z/' *
}

# RENAME UPPERCASE
function rupper() {
	rename -f 'y/a-z/A-Z/' *
}

# RENAME SPACE
function rspace() {
	rename "s/ //g" *
}

# RENAME DOT
function rdot() {
	rename "s/ /./g" *
}
