#!/bin/bash
# Kirsten Basinet Oct 2019
for dir in */
do
        isdone="n"	
	while [ $isdone != "y" ]
	do
		i=1
		echo -e "\nFiles in $dir"
		for file in $dir/* 
		do
			echo "  [$i] $(basename "$file")"
			let i++
		done

		echo -ne "Which file do you want to run? "
		read filenum
		echo -ne "Next directory? (y/n) "
		read isdone
	done
done

