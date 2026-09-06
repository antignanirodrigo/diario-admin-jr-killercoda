#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "~/healthcheck.sh" ]; then
  echo "Erro: ~/healthcheck.sh ainda existe. Rode: rm ~/healthcheck.sh"
  exit 1
else
  echo "Acertou! ~/healthcheck.sh removido."
  exit 0
fi
