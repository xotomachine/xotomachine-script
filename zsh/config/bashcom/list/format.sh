#!/bin/bash

# FORMAT CF
function ba.cf() {
	clang-format -i ./$1
}

# FORMAT CFA
function ba.cfa() {
	clang-format -i ./*.java
}
