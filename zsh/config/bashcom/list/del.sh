#!/bin/bash

# OPEN ZSH
function ba.del() {  filetoDel=$1; find . -name "${filetoDel}" -type f -delete; };
