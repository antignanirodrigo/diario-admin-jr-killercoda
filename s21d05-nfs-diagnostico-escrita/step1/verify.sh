#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "/mnt/uploads" ]; then
  echo "Acertou! /mnt/uploads existe."
  exit 0
else
  echo "Erro: /mnt/uploads não encontrado. Rode: mkdir -p /mnt/uploads"
  exit 1
fi
