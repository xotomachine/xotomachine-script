#!/bin/bash

# SPELL CHECK ALL
function ba.spellall() {
	misspell -w ./$1
}

# SPELL GIT
function ba.spellgit() {
	github-spellcheck
}

# SPELL CHECK 1
function ba.spell() {
	thishere=$1
	echo "${thishere}" | misspell -w -q
}

# SPELL CHECK 2
function ba.spellcheck() {
	hunspell -d en_US ./$1
}
