#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "teste.img" ]; then
  echo "Erro: teste.img ainda existe. Rode: rm teste.img"
  exit 1
else
  echo "Acertou! teste.img removido."
  exit 0
fi
