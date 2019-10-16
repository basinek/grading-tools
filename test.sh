PATTERNS=(*hello*.py *code*.py *calc*.py)

for dir in */*
do
	echo "$dir"
	for file in "{$PATTERNS[@]}"
	do
		echo "$file"
	done
done

# list of filenames [....]
# for each directory
	# cd to that
	# for each file in list:
		#try python3 [file]
		#if fail:
			# "which one do you want to run?"
			# for each file in dir:
				# print [i] filename
			# get user input
			# if num:
				# exec that file
		# cd ..

