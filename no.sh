#!/usr/bin/bash
if [[ $# -eq 0 ]]; then
	while true
	do
		echo "n"
	done
else
	while true
	do
		echo "$*"
	done
fi
