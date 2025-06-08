#! /bin/bash
read -p "Digite o diretório a ser copiado: " path

if [ -d "$path" ]; then
    file_copy="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
    tar -czf "$file_copy" "$path"
    echo "Copia de seguranca de $path gravada em $file_copy"
else 
    echo "O caminho náo é um diretório válido ou ele não existe"
fi