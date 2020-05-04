#!/bin/bash

SECONDS=0
fastboot reboot
adb wait-for-device
# do some work
adb devices
duration=$SECONDS
echo "First time: $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."

SECONDS=0
adb shell
duration=$SECONDS
echo "adb shell time: $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."

SECONDS=0
adb devices
adb wait-for-device
duration=$SECONDS
echo "Second time: $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
