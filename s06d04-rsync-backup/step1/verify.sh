#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "~/lab/origem" ]; then
  echo "Acertou! ~/lab/origem existe."
  exit 0
else
  echo "Erro: ~/lab/origem não encontrado. Rode: mkdir -p ~/lab/origem"
  exit 1
fi
