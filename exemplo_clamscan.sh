#!/bin/bash

# Caminho do arquivo ou diretório a ser escaneado
ALVO="/home/kali/Downloads/arquivo_suspeito"

# Executa a varredura com ClamAV
echo "Iniciando escaneamento com ClamAV em: $ALVO"
clamscan -r "$ALVO"
