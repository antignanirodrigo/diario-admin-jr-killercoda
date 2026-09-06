#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet nginx; then
  echo "Erro: nginx ainda está ativo. Rode: sudo systemctl stop nginx"
  exit 1
else
  echo "Acertou! nginx está parado."
  exit 0
fi
