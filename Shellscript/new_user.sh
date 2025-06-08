#! /bin/bash

read -p "Digite o nome do novo usuário" new_user

sudo useradd -m "$new_user"
sudo passwd "$new_user"
