#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "~/lab/origem" ]; then
  echo "Erro: ~/lab/origem ainda existe. Rode: rm ~/lab/origem"
  exit 1
else
  echo "Acertou! ~/lab/origem removido."
  exit 0
fi
