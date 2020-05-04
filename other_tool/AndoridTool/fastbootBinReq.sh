#! /bin/bash
GREEN="\033[32m"
R="\033[0m"; #reset
echo -e "${GREEN}Wait for fastboot device${R}";

msmserialno=`fastboot getvar msmserialno 2>&1| awk '$1 == "msmserialno:" {print $2}'`
device=`fastboot devices 2>&1| awk '$2 == "fastboot" {print $1}'`

echo -e  "${GREEN}fbkey $device $msmserialno 99${R}";

