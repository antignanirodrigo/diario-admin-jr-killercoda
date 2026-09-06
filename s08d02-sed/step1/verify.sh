#!/bin/bash
# Script oculto - gerado automaticamente
if [ -f "teste.conf" ]; then
  echo "Acertou! teste.conf existe."
  exit 0
else
  echo "Erro: teste.conf não encontrado. Refaça o passo anterior."
  exit 1
fi
