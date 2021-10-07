file_num=$(ls | wc -l)

echo "How many files are in the current directory?"

read answer

while [[ $answer -ne $file_num ]]
do
	if [[ $answer -lt $file_num ]]
	then
		echo "There are more files than that. Guess again."
		read answer
	elif [[ $answer -gt $file_num ]]
	then
		echo "There are less files than that. Guess again."
		read answer
	fi 

done 

echo "Congratulations that is the correct number of files!"
