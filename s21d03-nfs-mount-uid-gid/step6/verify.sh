#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "/dados/uploads" ]; then
  echo "Erro: /dados/uploads ainda existe. Rode: rm /dados/uploads"
  exit 1
else
  echo "Acertou! /dados/uploads removido."
  exit 0
fi
