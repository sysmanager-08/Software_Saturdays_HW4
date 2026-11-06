#!/usr/bin/bash

if [[ $# -eq 0 ]]; then

	current_dirr="."
	for file in "$current_dirr"/*; do
		if [[ -f "$file" ]]; then
			echo "$file"
		fi
	done

elif [[ $# -eq 1 ]]; then

	current_dirr="$1"

	if [[ -d "$current_dirr" ]]; then

		for file in "$current_dirr"/*; do
                	if [[ -f "$file" ]]; then
                       		echo "$file"
                	fi
	        done
	else
		echo "ERROR: Directory not found"
		exit 1
	fi

else
	echo "ERROR: Too many arguments"
	exit 2

fi
