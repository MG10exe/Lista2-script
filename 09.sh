#!/bin/bash

((soma=0))
for ((n=$1; n<=$2; n++)); do ((soma+=n)); done 

soma_ab=$(( $1+$2 ))

sem_ab=$(( ${soma}-${soma_ab} ))
echo "${sem_ab}"
