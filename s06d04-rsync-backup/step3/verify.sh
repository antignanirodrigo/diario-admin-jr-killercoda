#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "~/lab/origem/style.css" ]; then
  echo "Erro: ~/lab/origem/style.css ainda existe. Rode: rm ~/lab/origem/style.css"
  exit 1
else
  echo "Acertou! ~/lab/origem/style.css removido."
  exit 0
fi
