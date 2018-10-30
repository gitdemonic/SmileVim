#!/bin/bash

fastboot devices
fastboot flash system_a system.img
fastboot flash system_b system.img
fastboot erase userdata
fastboot reboot
