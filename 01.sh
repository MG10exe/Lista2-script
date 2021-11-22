#!/bin/bash
echo '
> : Direciona a saída de um comando para dentro de um arquivo, sobrescrevendo o seu conteúdo, caso o arquivo especificado não exista, ele o criará.
ex: ls > arq

>> : Direciona a saída de um comando para dentro de um arquivo, já este não sobrescreve o seu conteúdo, apenas acrescenta a saída do comando ao final do conteúdo existente no arquivo, caso o arquivo especificado não exista, ele o criará.
ex: ls >> arq

2> : Direciona a saída de erros para dentro de um arquivo, sobrescrevendo o seu conteúdo, caso o arquivo não exista, ele o criará.
ex: ls <arq> 2> arq

2>> :  Direciona a saída de erros para dentro de um arquivo, já este não sobrescreve o seu conteúdo, apenas acrescenta a saída de erro ao final do conteúdo existente no arquivo, caso o arquivo especificado não exista, ele o criará.
ex: ls <arq> 2>> arq

&> : Direciona a saída de erros e a saída padrão para dentro de um arquivo, sobrescrevendo o seu conteúdo, e caso o arquivo não exista, ele o criará
ex: ls <arq> &> arq

&>> : Direciona a saída de erros e a saída padrão para dentro de um arquivo, já este não sobrescreve o seu conteúdo, apenas acrescenta a saída de erro e a saída padrão ao final do conteúdo existente no arquivo, caso o arquivo especificado não exista, ele o criará.
ex: ls <arq> &>> arq

< : Direciona o conteúdo de um arquivo para a entrada de um comando.
ex: arq < /home

<< : Direciona a entrada de string
ex: cat << DELL
SEI LA
LA
DELL

<<< : Permite redirionar a entrada padrão do comando para a string escrita no bash.
ex: grep t <<< "teste"

| : Direciona a saída de um comando para a entrada de outro.
ex: cat arq | ls'
