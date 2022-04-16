#!/bin/bash

# SEND MAIL
function ba.send() {
	arg1=$1
	arg2=$2
	arg3=$3

	sendemail -l email.log \;
	-f "email" \;
	-u "${arg1}" \;
	-t "${arg2}" \;
	-s "smtp.gmail.com:587" \;
	-o tls=yes \;
	-xu "email" \;
	-xp "_password_" \;
	-m ${arg3}
}

# OPEN SERVERCONFIG
function ba.sshtst() {
	ssh root@`$1`
}

# OPEN DOCKER USER # OLD PASS TCUSER
function ba.dockeru() {
	ssh docker@`$1`
}

# OPEN DOCKER ROOT # old pass tcuser
function ba.dockerr() {
	ssh root@`$1`
}

# MONGODBFOREVER
function ba.mongoforever() {
	forever start -c /usr/local/bin/mongodb-linux-x86_64-2.0.0/bin/mongo
}

# HOW TO FOREVER START MONGOLDB
function ba.mongodforever() {
	mongod --dbpath ~/data/db --logpath ~/mongoLogs/mongod.log
}

# NOT A GOOD IDEA
function ba.serverforever() {
	sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
}
