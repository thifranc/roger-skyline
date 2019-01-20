#!/bin/bash

#will run file script with data furnished in file data
#look file script for file data formatting

if [ $# != 2 ]
then
    echo "usage: $0 <file data> <file script>"
    exit
fi

while read user; do
  	echo "cur row -> $user"
	user=`echo "$user" | sed -r 's/\~ /@/g'`
	echo $user
	/bin/bash $2 $user
done < $1
