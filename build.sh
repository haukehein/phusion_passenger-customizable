#!/bin/bash

[ -z "$( which git        2> /dev/null )" ]  &&  echo "ERROR: 'git' is not installed!"                   &&  exit 1
[ -z "$( which docker     2> /dev/null )" ]  &&  echo "ERROR: 'docker' is not installed!"                &&  exit 1
[ -z "$( docker --version 2> /dev/null )" ]  &&  echo "ERROR: You are not allowed to execute 'docker'!"  &&  exit 1

docker build $1 -t haukehein/phusion_passenger-customizable:0.9.19_update .
