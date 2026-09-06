#!/bin/bash
# Script oculto - gerado automaticamente
if [ -f "/tmp/teste_creds.cnf" ]; then
  echo "Acertou! /tmp/teste_creds.cnf existe."
  exit 0
else
  echo "Erro: /tmp/teste_creds.cnf não encontrado. Refaça o passo anterior."
  exit 1
fi
