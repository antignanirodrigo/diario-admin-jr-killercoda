#!/bin/bash
# Script oculto - gerado automaticamente
if id joao &>/dev/null; then
  echo "Erro: usuário joao ainda existe. Rode: sudo userdel joao"
  exit 1
else
  echo "Acertou! usuário joao removido."
  exit 0
fi
