#!/bin/bash 
lxc stop -f penguin
lxc delete penguin
lxc launch ubuntu:23.10 penguin --debug < /dev/null
