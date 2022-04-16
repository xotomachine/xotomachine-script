#!/bin/bash

# NPM APP
function ba.npmapp() {
	cd /usr/local/lib/node_modules/npm-gui && npm-gui | open http://0.0.0.0:1337/
}

# NPM CV
function ba.cv() {
	cd ~/Documents/igithub/util.resume
	npm start
}
