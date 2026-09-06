#!/bin/bash
# Script oculto - gerado automaticamente
if grep -q "linha normal" "a.log" 2>/dev/null; then
  echo "Acertou! a.log contém o conteúdo esperado."
  exit 0
else
  echo "Erro: a.log não contém o texto esperado."
  exit 1
fi
