#! /bin/bash

R="\033[0m" #reset
G="\033[32m" #Green

echo -e "${G}Wait-for-device...${R}";
adb wait-for-device;echo "Remove RxLogger";
adb shell "rm -rf sdcard/RxLogger/*";
echo -e "${G}set /proc/sys/kernel/printk to 9 9 9 9${R}";
adb shell "echo 9 9 9 9 > /proc/sys/kernel/printk";

echo -e "${G}set /sys/module/kernel/parameters/initcall_debug to 1${R}"
adb shell "echo 1 > /sys/module/kernel/parameters/initcall_debug"
echo -e "${G}set /sys/kernel/debug/clk/debug_suspend to 1...${R}"
adb shell "echo 1 > /sys/kernel/debug/clk/debug_suspend"
echo -e "${G}set debug_suspend to 1...${R}"
adb shell "echo 0 > /sys/module/printk/parameters/console_suspend$"
:<<"END"
echo -e "set /sys/module/qpnp_rtc/parameters/poweron_alarm to 0"
adb shell "echo 0 >/sys/module/qpnp_rtc/parameters/poweron_alarm"
echo -e "set debug_mask to 1..."
adb shell "echo 1 > /sys/module/msm_show_resume_irq/parameters/debug_mask"

echo -e "set /sys/module/msm_pm/parameters/debug_mask to 32"
# SDM660 can't use it
adb shell "echo 32 > /sys/module/msm_pm/parameters/debug_mask"
echo "set echo 9 > /sys/module/mpm_of/parameters/debug_mask to 9"
adb shell "echo 9 > /sys/module/mpm_of/parameters/debug_mask"
echo "set /sys/module/printk/parameters/console_suspend to 0"
END
echo -e "${G}Clear log buffer...${R}"
adb logcat -c;
adb shell dmesg -C;
echo -e "${G}Push 1 sec config...${R}";
adb push ~/.vim/other_tool/AndoridTool/config.json /sdcard/RxLogger/
echo -e "${YELLOW}adb shell ls -la /sdcard/RxLogger/${R}"
adb shell "ls -la /sdcard/RxLogger/"
