#!/bin/bash

n1=$1
n2=$2

if (( ${n1} > ${n2} )); then
	echo -e " Maior: ${n1}\n Menor: ${n2}"
elif (( ${n1} < ${n2} )); then
	echo -e " Maior: ${n2}\n Menor: ${n1}"
fi	
