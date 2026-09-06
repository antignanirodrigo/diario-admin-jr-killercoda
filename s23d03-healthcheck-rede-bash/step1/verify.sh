#!/bin/bash
# Script oculto - gerado automaticamente
if [ -f "~/healthcheck.sh" ]; then
  echo "Acertou! ~/healthcheck.sh existe."
  exit 0
else
  echo "Erro: ~/healthcheck.sh não encontrado. Refaça o passo anterior."
  exit 1
fi
