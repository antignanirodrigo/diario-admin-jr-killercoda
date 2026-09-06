#!/bin/bash
# Script oculto - gerado automaticamente
if grep -q "timeout=30" "config.old" 2>/dev/null; then
  echo "Acertou! config.old contém o conteúdo esperado."
  exit 0
else
  echo "Erro: config.old não contém o texto esperado."
  exit 1
fi
