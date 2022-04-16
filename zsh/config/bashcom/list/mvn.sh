#!/bin/bash

# M2EOFF
function ba.m2eoff() {
	echo mvn eclipse:eclipse -Declipse.useProjectReferences=false
	mvn eclipse:eclipse -Declipse.useProjectReferences=false
}

# MVNARC
function ba.mvnarc() {
	mvn archetype:generate
}
