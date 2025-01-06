#!/bin/bash

read -p "Digite o caminho do diretório: " path

if [ -d "$path" ]; then
    echo "O caminho é um diretório válido."
else
    echo "O caminho náo é um diretório válido ou ele não existe"
fi
