#!/bin/bash

file_path=''
exist_date=''
# while getopts "f:d:" opt; do
#	case "$opt" in
#		f) file_path=$OPTARG ;;
#		d) exist_date=$OPTARG ;;
#	esac
# done

read -p "Plz input file path: " file_path
read -p "Plz input exist date: " exist_date

readarray -t files < <(find $file_path -mtime +$exist_date -type f)

for file in "${files[@]}";do
	rm -i "$file"
done

