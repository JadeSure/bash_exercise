#!/bin/bash

folder_path=""
image_folder="images"
documents_folder="documents"
spreadsheets_folder="spreadsheets"
scripts_folder="scripts"
archives_folder="archives"
presentations_folder="presentations"

read -p "plz input the folder you want to organize: " folder_path

while read line; do

	case "$line" in
		*.jpg|*.jpeg|*.png)
			if [ ! -d "$image_folder" ]; then
           			mkdir "$image_folder"
        		fi

			mv $line $image_folder;;
		*.doc|*.docx|*.txt|*.pdf)
			if [ ! -d "$documents_folder" ]; then
            			mkdir "$documents_folder"
        		fi
			
			mv $line $documents_folder;;
		\?)
			echo "$line will be in the current folder"
	

	esac
done < <(ls $folder_path)
