#!/bin/bash

function wait_for_device()
{
		result="$(adb devices|wc -l)"
		result="$((result - 2))"
#		echo -e "\nDevice:\n$result"
}


function main()
{
		while [ 1 ]; do
				echo -e "Debug: $1"
				echo -e "Wait for device..."
				wait_for_device
				if [[ $result -gt 0 ]] && [[ $result -lt 2 ]]; then
						adb logcat -v time|grep -i "$1"|tee "monitor_logcat_output.txt"
				fi
				sleep 1
		done
}

main "$1"
