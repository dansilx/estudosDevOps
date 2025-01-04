#!/bin/bash
#if condicional
if [ condicional ]; then
    # Comandos a serem executados se a condicao testada for verdadeira
elif [ outra condicional ]; then
    # Comandos a serem executados se a primeira condicao testada for falsa e a segunda verdadeira
else
    # Comandos a serem executados se nenhuma das condicoes testadas for verdadeira
fi

#Igualdade entre duas strings

if [ "$string1" = "$string2" ]; then
  # Comandos a serem executados se as strings forem iguais.
fi

#Desigualdade entre duas strings

if [ "$string1" != "$string2" ]; then
  # Comandos a serem executados se as strings forem distintas.
fi

#Igualdade entre dois números

if [ "$numero1" -eq "$numero2" ]; then
  # Comandos a serem executados se os números forem iguais.
fi

#Desigualdade entre dois números

if [ "$numero1" -ne "$numero2" ]; then
  # Comandos a serem executados se os números forem distintos.
fi

#Testando se um número é maior que outro

if [ "$numero1" -gt "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for maior que o segundo.
fi

#Testando se um número é menor que outro

if [ "$numero1" -lt "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for menor que o segundo.
fi

#Testando se um número é maior ou igual a outro

if [ "$numero1" -ge "$numero2" ]; then
  # Comandos a serem executados se o primeiro número for maior ou igual ao segundo.
fi

#Verificando a existência de um arquivo ou diretório

if [  -e "/caminho/do/arquivo" ]; then
  # Comandos a serem executados caso seja constatada a existência do diretório ou arquivo.
fi