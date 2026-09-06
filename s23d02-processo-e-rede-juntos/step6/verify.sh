#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet app-teste.service; then
  echo "Erro: app-teste.service ainda está ativo. Rode: sudo systemctl stop app-teste.service"
  exit 1
else
  echo "Acertou! app-teste.service está parado."
  exit 0
fi
