#!/bin/bash

# DOCKER ACTIVE
function ba.dockeractive(){ docker-machine active };

# DOCKER MSTART
function ba.dockermstart(){ docker-machine start };

# DOCKER MSTOP
function ba.dockermstop(){ docker-machine stop };

# DOCKER MACHINELS
function ba.dockermachinels(){ docker machine ls };

# DOCKER IMAGELS
function ba.dockerimagels(){ docker images -a };

# DOCKER DEL
function ba.dockerdel(){ docker rmi };

# DOCKER PS
function ba.dockerps(){ docker ps };

# DOCKER NETLS
function ba.dockernetls(){ docker network ls };

# DOCKER ENV
function ba.dockerenv(){ eval $(docker-machine env) };

# DOCKER RUNFOREVER
function ba.dockerrunforever(){ docker run -p 8080:8080 squidit:latest & };

# DOCKER PS
function ba.dockerps(){ ps -ef };

# DOCKER IP
function ba.dockerip(){ ifconfig };
