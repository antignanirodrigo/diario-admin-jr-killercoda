#!/bin/bash
# Script oculto - gerado automaticamente
PERM=$(stat -c '%a' /dados/uploads-teste/arquivo1.jpg 2>/dev/null)
if [ "$PERM" == "600" ]; then
  echo "Acertou! /dados/uploads-teste/arquivo1.jpg está em 600."
  exit 0
else
  echo "Erro: permissão atual é '$PERM', esperado '600'. Rode: chmod 600 /dados/uploads-teste/arquivo1.jpg"
  exit 1
fi
