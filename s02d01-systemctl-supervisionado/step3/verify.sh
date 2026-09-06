#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet nginx; then
  echo "Acertou! nginx está ativo."
  exit 0
else
  echo "Erro: nginx não está ativo. Rode: sudo systemctl start nginx"
  exit 1
fi
