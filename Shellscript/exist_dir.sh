#!/bin/bash

read -p "Digite o nome do arquivo: " search
if [ -e $search ]; then
    echo "O arquivo existe."
else
    echo "O arquivo nao existe."
fi 