#!/bin/bash

path=`pwd`
ip_oa=`ip addr show enp3s0|awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}'`
ip_rd=`ip addr show enx00e04c681d9d|awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}'`
username=`whoami`
echo $path
echo $1
scppath_oa="scp ${username}@${ip_oa}:${path}/$1 ."
rsyncpath_oa="rsync -avh --progress ${username}@${ip_oa}:${path}/$1 ."
scppath_rd="scp ${username}@${ip_rd}:${path}/$1 ."
rsyncpath_rd="rsync -avh --progress ${username}@${ip_rd}:${path}/$1 ."
echo
echo "===[SCP]==="
echo $scppath_oa
echo $scppath_rd
echo
echo "===[Rsync]==="
echo $rsyncpath_oa
echo $rsyncpath_rd
#echo $scppath|xclip -se clip

