#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "~/lab_loops" ]; then
  echo "Acertou! ~/lab_loops existe."
  exit 0
else
  echo "Erro: ~/lab_loops não encontrado. Rode: mkdir -p ~/lab_loops"
  exit 1
fi
