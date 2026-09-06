#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "~/lab-logs" ]; then
  echo "Erro: ~/lab-logs ainda existe. Rode: rm ~/lab-logs"
  exit 1
else
  echo "Acertou! ~/lab-logs removido."
  exit 0
fi
