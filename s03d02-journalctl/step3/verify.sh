#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet ssh; then
  echo "Acertou! ssh está ativo."
  exit 0
else
  echo "Erro: ssh não está ativo. Rode: sudo systemctl start ssh"
  exit 1
fi
