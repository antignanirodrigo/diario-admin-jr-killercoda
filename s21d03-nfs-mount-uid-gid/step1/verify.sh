#!/bin/bash
# Script oculto - gerado automaticamente
DONO=$(stat -c '%U' /dados/uploads/arquivo.txt 2>/dev/null)
if [ "$DONO" == "9999" ] && [ "$(stat -c '%G' /dados/uploads/arquivo.txt 2>/dev/null)" == "9999" ]; then
  echo "Acertou! /dados/uploads/arquivo.txt agora pertence a 9999."
  exit 0
else
  echo "Erro: dono atual é '$DONO', esperado '9999'. Rode: chown 9999:9999 /dados/uploads/arquivo.txt"
  exit 1
fi
