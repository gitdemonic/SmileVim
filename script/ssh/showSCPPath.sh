#!/bin/bash

path=`pwd`
ip_oa=`ip addr show enp2s0|awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}'`
ip_rd=`ip addr show enx00e04c681d9d|awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}'`
echo $path
echo $ip_oa
scppath_oa="henry@${ip_oa}:${path}"
scppath_rd="henry@${ip_rd}:${path}"
echo $scppath_oa
echo $scppath_rd
#echo $scppath|xclip -se clip

