#!/bin/bash

arq1=$1
arq2=$2
arq3=$3
arq4=$4

if ls ${arq1} &> /dev/null; then
       	echo "";
else
       	echo "erro: o arquivo ${arq1} não existe";
	exit
fi

if ls ${arq2} &> /dev/null; then
     	echo "";
else
       	echo "erro: o arquivo ${arq2} não existe";
	exit
fi

if ls ${arq3} &> /dev/null; then
        echo "";
else
        echo "erro: o arquivo ${arq3} não existe";
        exit
fi

if ls ${arq4} &> /dev/null; then
        echo "";
else
        echo "erro: o arquivo ${arq4} não existe";
        exit
fi

linhas_arq1="$(wc -l < ./${arq1})"
linhas_arq2="$(wc -l < ./${arq2})"
linhas_arq3="$(wc -l < ./${arq3})"
linhas_arq4="$(wc -l < ./${arq4})"

if (( ${linhas_arq1} > ${linhas_arq2} )) && (( ${linhas_arq1} > ${linhas_arq3})) && (( ${linhas_arq1} > ${linhas_arq4} )); then
        echo -e " Maior: ${arq1}"
elif (( ${linhas_arq2} > ${linhas_arq1} )) && (( ${linhas_arq2} > ${linhas_arq3} )) && (( ${linhas_arq2} > ${linhas_arq4} )); then
        echo -e " Maior: ${arq2}"
elif (( ${linhas_arq3} > ${linhas_arq1} && ${linhas_arq3} > ${linhas_arq2} && ${linhas_arq3} > ${linhas_arq4} )); then
        echo -e " Maior: ${arq3}"
elif (( ${linhas_arq4} > ${linhas_arq1} && ${linhas_arq4} > ${linhas_arq2} && ${linhas_arq4} > ${linhas_arq3} )); then
        echo -e " Maior: ${arq4}"
fi
