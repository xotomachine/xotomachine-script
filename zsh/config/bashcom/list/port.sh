#!/bin/bash

# PORTLISTEN
function ba.portlisten() {
	lsof -i -P -n | grep LISTEN
}

# PORTINFO
function ba.portinfo() {
	ps aux | grep ${one}
}

# KILLPORT
function ba.killport() {
	lsof -P | grep $1 | awk '{print $2}' | xargs kill -9
}
