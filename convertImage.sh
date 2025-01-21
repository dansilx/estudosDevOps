#! /bin/bash

read -p "Digite o caminho do diretório jpg com as imagens: " path

if  [ ! -d "$path" ]; then
	echo "Diretório não encontrado: $path"
	exit 1
fi

for image_jpg in "$path"/*.jpg do

	convert "$image_jpg" "${image_jpg%.jpg}" && echo "Imagem convertida ${imagem_jpg%.jpg}.png" || echo "Falha na conversão: $image_jpg"

done

echo "Conversão concluída!"
