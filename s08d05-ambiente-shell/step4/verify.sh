#!/bin/bash
# Script oculto - gerado automaticamente
if grep -q "alias ll='ls -la'" "~/.bashrc" 2>/dev/null; then
  echo "Acertou! ~/.bashrc contém o conteúdo esperado."
  exit 0
else
  echo "Erro: ~/.bashrc não contém o texto esperado."
  exit 1
fi
