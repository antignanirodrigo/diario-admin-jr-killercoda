#!/bin/bash
# Script oculto - gerado automaticamente
if [ -f "backup.sh" ]; then
  echo "Acertou! backup.sh existe."
  exit 0
else
  echo "Erro: backup.sh não encontrado. Refaça o passo anterior."
  exit 1
fi
