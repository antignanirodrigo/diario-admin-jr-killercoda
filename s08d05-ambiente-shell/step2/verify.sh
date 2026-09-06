#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "~/scripts_teste" ]; then
  echo "Acertou! ~/scripts_teste existe."
  exit 0
else
  echo "Erro: ~/scripts_teste não encontrado. Rode: mkdir -p ~/scripts_teste"
  exit 1
fi
