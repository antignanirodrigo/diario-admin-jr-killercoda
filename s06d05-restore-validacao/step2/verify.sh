#!/bin/bash
# Script oculto - gerado automaticamente
if [ -d "~/lab/restore_test" ]; then
  echo "Acertou! ~/lab/restore_test existe."
  exit 0
else
  echo "Erro: ~/lab/restore_test não encontrado. Rode: mkdir -p ~/lab/restore_test"
  exit 1
fi
