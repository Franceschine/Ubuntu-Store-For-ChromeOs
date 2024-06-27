#!/bin/bash 
lxc stop -f penguin
lxc delete penguin
lxc launch ubuntu:24.04 penguin --debug < /dev/null
