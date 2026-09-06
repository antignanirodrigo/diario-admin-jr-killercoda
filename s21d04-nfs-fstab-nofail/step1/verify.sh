#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "/dados/uploads" ]; then
  echo "Acertou! /dados/uploads existe."
  exit 0
else
  echo "Erro: /dados/uploads não encontrado. Rode: mkdir -p /dados/uploads"
  exit 1
fi
