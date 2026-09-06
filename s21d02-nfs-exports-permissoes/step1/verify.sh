#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-enabled --quiet --now 2>/dev/null; then
  echo "Acertou! --now está habilitado no boot."
  exit 0
else
  echo "Erro: --now não está habilitado. Rode: sudo systemctl enable --now"
  exit 1
fi
