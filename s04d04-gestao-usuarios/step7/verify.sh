#!/bin/bash
# Script oculto - gerado automaticamente
if id teste_user &>/dev/null; then
  echo "Erro: usuário teste_user ainda existe. Rode: sudo userdel teste_user"
  exit 1
else
  echo "Acertou! usuário teste_user removido."
  exit 0
fi
