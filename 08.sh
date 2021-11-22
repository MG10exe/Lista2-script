#!/bin/bash

#Parte 1 

for x in $(seq 0 108)
do
	(( x % 2 != 0 )) && echo ${x}

done

#Parte2
echo -e "\n"

a=$1
b=$2

for x in $(seq ${a} ${b})
do
        (( x % 2 != 0 )) && echo ${x}

done
