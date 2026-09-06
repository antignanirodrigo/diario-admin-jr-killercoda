#!/bin/bash
# Script oculto - gerado automaticamente
if grep -q "ERRO: DIR vazio" "&2;" 2>/dev/null; then
  echo "Acertou! &2; contém o conteúdo esperado."
  exit 0
else
  echo "Erro: &2; não contém o texto esperado."
  exit 1
fi
