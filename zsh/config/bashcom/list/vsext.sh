#!/bin/bash

# UPDATE DARK
function ba.theme.dark() {
	cd ~/Documents/igithub/xotopio.dark
	vsce package
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "xotopio dark theme update"
	git push origin master
	vsce publish minor
}

# UPDATE LIGHT
function ba.theme.light() {
	cd ~/Documents/igithub/xotopio.light
	vsce package
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "xotopio light theme update"
	git push origin master
	vsce publish minor
}
