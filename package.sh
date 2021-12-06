#!/bin/bash


#find | egrep -v "(/\.git|\.swp|~$|${0})" 

rsync -auvz --exclude-from package-exclude.ctl . "${1}"
