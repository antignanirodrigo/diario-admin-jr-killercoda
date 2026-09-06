#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "teste.log" ]; then
  echo "Erro: teste.log ainda existe. Rode: rm teste.log"
  exit 1
else
  echo "Acertou! teste.log removido."
  exit 0
fi
