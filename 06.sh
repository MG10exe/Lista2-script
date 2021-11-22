#!/bin/bash

arquivo=$1
ls ${arquivo} &> /dev/null && linhas="$(wc -l < ${arquivo})" && (( $linhas < 3 )) && echo "${arquivo}" && tail -1 ${arquivo} || echo "BAD"


