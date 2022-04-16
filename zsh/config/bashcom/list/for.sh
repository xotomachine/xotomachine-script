#!/bin/bash

# FOR LOOP
function ba.forloop() {
	counter=1
	for value in {10}; do
		send Hi `$1` "hello how are you tonight? "
	done
	echo All done
}

# FOR LOOP1
function ba.forloop1() {
	for i in $(ls); do
		echo item: $i
	done
}

# FOR LOOP2
function ba.forloop2() {
	for i in $(seq 1 10); do
		echo $i
	done
}

# FOR LOOP3
function ba.forloop3() {
	COUNTER=0
	while [ $COUNTER -lt 10 ]; do
		echo The counter is $COUNTER
		let COUNTER=COUNTER+1
	done
}

# FOR LOOP4
function ba.forloop4() {
	COUNTER=20
	until [ $COUNTER -lt 10 ]; do
		echo COUNTER $COUNTER
		let COUNTER-=1
	done
}
