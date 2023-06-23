#!/bin/bash

# Script de backup após 5 minutos do sistema inicializar

# 1. Onde o backup será armazenado?
pendrive_dir="/run/media/$USER/Backup"  # Modifique "Backup" para o nome do seu pendrive

# 2. Quais arquivos ou diretórios serão incluídos no backup?
arquivos_backup=(
  "/home/$USER/Arquivos"
  "/home/$USER/scripts"
  "/home/$USER/Documents"
)

# 3. Qual é a frequência de execução do backup?
frequencia_backup="5 minutos"

# Função para realizar o backup
realizar_backup() {
  echo "Realizando backup..."
  backup_arch="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
  tar -czvf "$pendrive_dir/$backup_arch" "${arquivos_backup[@]}"

  if [ $? -eq 0 ]; then
    echo "Backup concluído com sucesso!"

    # Remover backups antigos (mais de 2 semanas)
    find "$pendrive_dir" -name "backup_*" -type f -mtime +14 -exec rm {} \;

    # Adicione aqui qualquer ação adicional desejada após a conclusão do backup

  else
    echo "Ocorreu um erro durante o backup."
    # Adicione aqui qualquer ação adicional desejada em caso de erro no backup
  fi
}

# Aguardar 5 minutos antes de executar o backup
echo "Aguardando 5 minutos..."
sleep 600

# Executar o backup
realizar_backup

