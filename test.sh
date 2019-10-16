#!/bin/bash
# Kirsten Basinet Oct 2019

# Loop through student directories
for dir in */
do
	# Get dir contents
	files=()
	i=0
	for file in $dir/*
	do
		files[$i]="$(basename "$file")"
		let i++
	done
	echo "${files[@]}"

	# Show dir contents
        isdone="n"
	while [ $isdone != "y" ]
	do		
		i=0
		echo -e "\nFiles in $dir"
		for file in "${files[@]}" 
		do
			echo "  [`expr $i + 1`] "$file""
			let i++
		done

		# Get file to run
		filenum=`expr $i + 1`
		while [ $filenum -gt $i ]
		do
			echo -ne "Which file do you want to run? "
			read filenum
		done
		
		let filenum--
		if [[ ${files[$filenum]} == *.py ]]
		then
			echo "${files[$filenum]} is a python file."
		else
			echo "${files[$filenum]} is something else."
		fi		

		echo -ne "Next directory? (y/n) "
		read isdone
		if [ $isdone == "q" ] ; then exit 1 ; fi
	done
done

