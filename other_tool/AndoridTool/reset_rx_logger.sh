#! /bin/bash
R="\033[0m" #reset
B='\e[1m' #bold
D="\[\033[2m\]" #dim
U="\[\033[4m\]" #underline
UNDER='\e[4m'  #Underline

BLUE="\[\033[0;34m\]"
BLUE_BOLD="\[$(tput bold)\]\[\033[38;5;39m\]"
BLUE_BOLD_UNDERLINE="\[$(tput bold)\]\[\033[38;5;39m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[$(tput bold)\]\[\033[38;5;222m\]"
LIGHT_ORANGE="\[$(tput bold)\]\[\033[38;5;202m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[$(tput bold)\]\[\033[38;5;10m\]"
WHITE="\[\033[0;37m\]"
WHITE_BOLD="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DEFAULT="\[\033[39m\]"
RED="\[\033[91m\]"
GREEN="\033[32m"
YELLOW="\e[33m"
LIGHT_YELLOW="\[$(tput bold)\]\[\033[38;5;11m\]"
BLUE="\[\033[34m\]"
MAGENTA="\[\033[95m\]"
CYAN="\[\033[96m\]"
WHITE="\[\033[97m\]"
GREY="\[\033[90m\]"

echo -e "${GREEN}Wait-for-device...${R}";
adb wait-for-device;echo "Remove RxLogger";
adb shell "rm -rf sdcard/RxLogger/*";
echo -e "${GREEN}Clear log buffer...${R}"
adb logcat -c;
adb shell dmesg -C;
echo -e "${GREEN}Push 1 sec config...${R}";
adb push ~/.vim/other_tool/AndoridTool/config.json /sdcard/RxLogger/
echo -e "${YELLOW}adb shell ls -la /sdcard/RxLogger/${R}"
adb shell "ls -la /sdcard/RxLogger/"
