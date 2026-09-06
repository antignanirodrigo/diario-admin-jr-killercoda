#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "/etc/hosts.bak" ]; then
  echo "Acertou! /etc/hosts.bak existe."
  exit 0
else
  echo "Erro: /etc/hosts.bak não encontrado."
  exit 1
fi
