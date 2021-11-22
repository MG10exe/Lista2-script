#!/bin/bash

dir_atual="$(ls)"
for x in ${dir_atual}
do
	if test -d $x; then echo "$x" >> dir;
	elif test -f $x; then echo "$x" >> files;
	elif test -L $x; then echo "$x" >> links;
	fi
done	

echo -e "DIR---------------\n$(cat dir)\n\nFILES---------------\n$(cat files)\n\nLinks---------------\n$(cat links)"

rm links &> /dev/null
rm dir &> /dev/null
rm files &> /dev/null
