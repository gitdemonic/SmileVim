#!/bin/bash

function custom_cd() {
		cd $(dirname $1)
		#if [[ $2 -eq "" ]]; then
				#cd $HOME
		#elif [ -d $1 ]; then
				#cd $1
		#elif [ -f "$1" ]; then
				#echo -e "Go to last directory"
				#cd $(dirname $1)
		#else
				#echo "$1 is not valid"
		#fi
}

custom_cd $1
