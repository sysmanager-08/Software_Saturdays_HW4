#!/usr/bin/bash
if [[ $# -le 1 ]]; then
	echo "ERROR: Not enough arguments."
	exit 1
fi

num="$1"
file="$2"

if [[ "$num" -le 0 ]]; then
	echo "ERROR: First argument must be a positive number."
	exit 2
fi

if [[ ! -f "$file" ]]; then
	echo "ERROR: Irregular file given"
	exit 3
fi

while IFS= read -r line; do

	if [[ "$num" -eq 0 ]]; then
		break
	fi

	echo "$line"

	((num--))

done < "$file"
