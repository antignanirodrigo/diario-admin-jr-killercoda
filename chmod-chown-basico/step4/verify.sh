#!/bin/bash
# Script oculto — confirma que o aluno voltou pra 640 depois do teste com 777
PERM=$(stat -c '%a' teste.log 2>/dev/null)
if [ "$PERM" == "640" ]; then
  echo "Acertou! Você testou o risco (777) e voltou pro seguro (640)."
  exit 0
else
  echo "Erro: teste.log está em '$PERM'. Depois de testar 777, volte com: chmod 640 teste.log"
  exit 1
fi
