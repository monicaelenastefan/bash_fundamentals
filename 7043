#!/bin/bash

if [ $# != 2 ]
then
	echo "Please insert the pages URL as 1arg and preffered filename as arg2"
	echo "Please note that if the filename exists it will be overitten."
	echo "All destionation files are created in the bash scripts directory."
	exit 1
fi

if [[ $1 != http?(s)://* ]]
then
	echo "The first argument is not a valid url"
	exit 1
fi

if [[ $2 != *.txt  ]]
then 
	echo "The second argument must be someting.txt format"
	exit 1
fi

file="index.html"
if [[ -f "$file" ]] 
then
 rm "$file"
fi

if [[ -f $2 ]]
then
 rm $2
else
 touch $2
fi

wget -q  $1

grep -i -o  "\w*a\w*\|\w*A\w*"  index.html > $2  
wc -l < $2
rm index.html

