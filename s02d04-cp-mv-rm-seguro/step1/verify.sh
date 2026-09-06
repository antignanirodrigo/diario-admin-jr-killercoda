#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "teste_cache" ]; then
  echo "Acertou! teste_cache existe."
  exit 0
else
  echo "Erro: teste_cache não encontrado. Rode: mkdir -p teste_cache"
  exit 1
fi
