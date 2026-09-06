#!/bin/bash
# Script oculto - gerado automaticamente
if [ -f "teste.log" ]; then
  echo "Acertou! teste.log existe."
  exit 0
else
  echo "Erro: teste.log não encontrado. Refaça o passo anterior."
  exit 1
fi
