#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "~/lab-logs" ]; then
  echo "Acertou! ~/lab-logs existe."
  exit 0
else
  echo "Erro: ~/lab-logs não encontrado. Rode: mkdir -p ~/lab-logs"
  exit 1
fi
