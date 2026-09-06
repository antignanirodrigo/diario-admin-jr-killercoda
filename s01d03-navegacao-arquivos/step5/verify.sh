#!/bin/bash
# Script oculto - gerado automaticamente
if grep -q "teste" "app.log" 2>/dev/null; then
  echo "Acertou! app.log contém o conteúdo esperado."
  exit 0
else
  echo "Erro: app.log não contém o texto esperado."
  exit 1
fi
