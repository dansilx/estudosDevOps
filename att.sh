#! /bin/bash

source /etc/os-release

so=$(id -u)

if [ "$so" -ne 0 ]; then
	echo "Favor executar como root ou usar sudo."
	exit 1
fi

if [ "$ID" = "ubuntu" ]; then
	sudo apt-get update
	
	if [ $? -ne 0 ]; then
        	echo "Erro no apt-get update"
		exit 1
	fi

	sudo apt-get upgrade -y

	if [ $? -ne 0 ]; then
                echo "Erro no apt-get upgrade"
                exit 1
        fi

	echo "Atualização concluída com sucesso"

elif [ "$ID" = "fedora" ]; then
	sudo dnf upgrade -y

	if [ $? -ne 0 ]; then
                echo "Erro no dnf upgrade"
                exit 1
        fi
	
	echo "Atualização concluída com sucesso"

elif [ "$ID" = "arch" ]; then
	sudo pacman -Syu --noconfirm
	
	if [ $? -ne 0 ]; then
                echo "Erro no pacman -Syu"
                exit 1
        fi
	
	echo "Atualização concluída com sucesso"
fi

echo "Lista de pacotes atualizada com sucesso."

