#!/bin/bash

#Esse script tem objetivo em fazer um arquivo lexico base com suporte a ligua portuguesa (Brazileira) no festival/festvox, usado o programa java "annotator" classificador de fonemas, grafonas da FalaBrasil.

#                   Referencias

# Annotator: https://github.com/falabrasil/annotator por FalaBrasil.

#listar de palavras  a ser usada no Annotator: "Lista de todas as paravras do portugues brasileiro" em https://www.ime.usp.br/~pf/dicios/index.html" feito pelo Departamento de Ciência da Computação Instituto de Matemática e Estatística da USP.
#Definir variável de arquivo.
FILE=$1


#Se a quantidade de palavras a se usado for diferente 0, usar para quantidadequatidade fornecida se nao usar a quantidade 

for i in $(seq 1 $(wc --line < $FILE)); do
#Definir palavra para ser processada.
WORD=$(cat "$FILE" | grep -n ^ | grep ^$i: | cut -d: -f2)

#Processar palavras
RESULT=$(java -jar fb_nlplib.jar $WORD --g2p-s --cross)

#Escrever palavra
echo "( $WORD n ((( $RESULT 1)) )" >> lexicon.scm

echo "$i de $(wc --line)"
done
