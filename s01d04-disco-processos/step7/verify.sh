#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "/var/log/teste-disco-cheio.log" ]; then
  echo "Erro: /var/log/teste-disco-cheio.log ainda existe. Rode: rm /var/log/teste-disco-cheio.log"
  exit 1
else
  echo "Acertou! /var/log/teste-disco-cheio.log removido."
  exit 0
fi
