#!/bin/bash
# Script oculto - gerado automaticamente
PERM=$(stat -c '%a' {} 2>/dev/null)
if [ "$PERM" == "664" ]; then
  echo "Acertou! {} está em 664."
  exit 0
else
  echo "Erro: permissão atual é '$PERM', esperado '664'. Rode: chmod 664 {}"
  exit 1
fi
