#!/bin/bash
# Script oculto - gerado automaticamente
if id teste-jr &>/dev/null; then
  echo "Erro: usuário teste-jr ainda existe. Rode: sudo userdel teste-jr"
  exit 1
else
  echo "Acertou! usuário teste-jr removido."
  exit 0
fi
