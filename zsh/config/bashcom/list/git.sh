#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# GIT DELETE
function ba.gitd.rem() {
	USERNAME=$3
	THEFILE=$1
	TOKEN=$2
	curl -X DELETE -H $(Authorization: token ${TOKEN}) https://api.github.com/repos/${USERNAME}/${THEFILE}
}

# GIT file
function ba.gitd.file() {
	git rm ./$1
}

# GIT CACHE
function ba.gitd.cache() {
	git rm --cached ./$1
}

# GIT CREATE
function ba.gitc.pub() {
	NameOfFile=$1
	InfoofFile=$2
	mkdir ${NameOfFile}
	cd ./${NameOfFile}
	echo "# Welcome to ${NameOfFile}" >>README.md
	echo ${InfoofFile} >>README.md
	git init
	echo "CREATING REPO ${NameOfFile}"
	hub create -d "${NameOfFile}"
	git add . && git commit -m "gitc.pub commit"
	git push origin master
}

# CREATE PUB GIT WITH CONTENT IN FOLDER
function ba.gitc.pub.all() {
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "gitc.pub.all commit"
	echo "creating repo ${BASENAME}"
	hub create -p -d "${BASENAME}"
	git push origin master
}

# CREATE PRIV EMPTY GIT
function ba.gitc.priv() {
	NameOfFile=$1
	InfoofFile=$2
	mkdir ${NameOfFile}
	cd ./${NameOfFile}
	echo "# Welcome to ${NameOfFile}" >>README.md
	echo ${InfoofFile} >>README.md
	git init
	echo "CREATING REPO ${NameOfFile}"
	hub create -p -d "${NameOfFile}"
	git add . && git commit -m "gitc.priv commit"
	git push origin master
}
# CREATE PRIV GIT WITH CONTENT IN FOLDER
function ba.gitc.priv.all() {
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "gitc.prive.all commit"
	echo "creating repo ${BASENAME}"
	hub create -p -d "${NameOfFile}"
	git push origin master
}

# UPDATE GIT -----> TO MAYBE CHANGE
function ba.gita() {
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "latest edit: added"
	git push origin master
}

# UPDATE GIT -----> TO MAYBE CHANGE
function ba.gitu.dir() {
	CURRENT=$(pwd)
	# BASENAME=`basename "$CURRENT"`;
	git add . && git commit -m "latest edit: "$1" added"
	# git commit -a -m
	git push -u origin master
	echo "Updating Complete! 🥞"
}

# UPDATE ALL GIT REPOS
function ba.gitu.all() {
	CUR_DIR=$(pwd)
	echo "${GREEN}Updating all repositories...${NC}"
	echo ""
	for i in $(find . -name ".git" | cut -c 3-); do
		echo "${GREEN}[Git] ✅ ----------------- $i ${NC}"
		echo ""
		cd "$CUR_DIR/$(dirname "$i")"
		git checkout development
		git add .
		git commit -m "latest edit: gitu.all -> update"
		git push
		echo ""
	done
	echo ""
	echo "${GREEN}Updating Complete! 🥞${NC}"
}

# PULLING FROM GIT
function ba.gitp.all() {
	CUR_DIR=$(pwd)
	echo "Pulling in latest changes for all repositories..."
	for i in $(find . -name ".git" | cut -c 3-); do
		echo ""
		echo "$i"
		cd "$i"
		cd ..
		git pull origin master
		cd "$CUR_DIR"
	done
	echo "Complete!"
}
