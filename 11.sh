#!/bin/bash

for x in $*
do
	echo "Ajuda sobre o comando test"
	if test "$x" == "aritmetica" ; then echo "Opções para testes de logica: "; echo '(( 10 > 11 )): testa se 10 é maior que 11';
	elif test "$x" == "strings" ; then echo "Opções para testes de strings: "; echo 'test a != b: testa se as strings são diferentes';
	elif test "$x" == "variaveis"; then echo "Opções para testes de variaveis: "; echo 'if [ -z "$VAR" ];: retornará true se uma variável estiver desconfigurada ou definida como a sequência vazia ("")';
	elif test "$x" == "arquivos" ; then echo "Opções para testes de arquivos: "; echo 'test -d <arq>: testa se o arquivo existe e é um diretório';
fi
done
