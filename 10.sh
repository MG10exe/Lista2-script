#!/bin/bash

for x in $*
do
	ls $x &> /dev/null && echo "$x SIM" >> resultado || echo "$x NAO" >> resultado
done	

grep -R "NAO" resultado &> /dev/null && cat resultado || echo -e "$(cat resultado)\nSábado tem gol de Michael"

rm resultado
