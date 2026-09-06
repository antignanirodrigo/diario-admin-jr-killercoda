#!/bin/bash
# Script oculto — verifica a permissao octal exata do arquivo
PERM=$(stat -c '%a' teste.log 2>/dev/null)
if [ "$PERM" == "640" ]; then
  echo "Acertou! teste.log está em 640 (-rw-r-----)."
  exit 0
else
  echo "Erro: permissão atual é '$PERM', esperado '640'. Rode: chmod 640 teste.log"
  exit 1
fi
