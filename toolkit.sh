#!/bin/bash

PS3="Choose what utils do you want to use"
select tool in folder_organiser cruft_remover;
do
	"./$tool.sh"
done
