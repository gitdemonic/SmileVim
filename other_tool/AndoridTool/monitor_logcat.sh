#!/bin/bash

OUTPUT_FILE='monitor_logcat_output.txt'

function wait_for_device()
{
		echo -e "Wait for device..."
		adb wait-for-device
		result="$(adb devices|wc -l)"
		result="$((result - 2))"
#		echo -e "\nDevice:\n$result"
}


function main()
{
		while [ 1 ]; do
				wait_for_device
				if [[ $result -gt 0 ]] && [[ $result -lt 2 ]]; then
						if [[ $1 != '' ]]; then
								echo -e "grep command: $1"
								echo -e "Logging..."
#								adb logcat -v time|grep -i $1|tee $OUTPUT_FILE
								adb logcat -v time|grep -i $1 >> $OUTPUT_FILE
								echo -e "Log save to $OUTPUT_FILE"
						else
								echo -e "Logging..."
#								adb logcat -v time|tee -a $OUTPUT_FILE
								adb logcat -v time>> $OUTPUT_FILE
								echo -e "Log save to $OUTPUT_FILE"
						fi
				fi
				sleep 1
		done
}

main "$1"
