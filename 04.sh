#!/bin/bash

dir1=$1
dir2=$2
dir3=$3

ls ${dir1} &> /dev/null && echo "OK" || echo "Algo de errado, não está certo."
ls ${dir2} &> /dev/null && echo "OK" || echo "Algo de errado, não está certo."
ls ${dir3} &> /dev/null && echo "OK" || echo "Algo de errado, não está certo."

