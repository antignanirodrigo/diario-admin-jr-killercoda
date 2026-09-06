#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "/caminho/absoluto/confirmado/teste_cache/" ]; then
  echo "Erro: /caminho/absoluto/confirmado/teste_cache/ ainda existe. Rode: rm /caminho/absoluto/confirmado/teste_cache/"
  exit 1
else
  echo "Acertou! /caminho/absoluto/confirmado/teste_cache/ removido."
  exit 0
fi
