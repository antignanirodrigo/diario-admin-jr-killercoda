#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "/etc/systemd/system/teste-jr.service" ]; then
  echo "Erro: /etc/systemd/system/teste-jr.service ainda existe. Rode: rm /etc/systemd/system/teste-jr.service"
  exit 1
else
  echo "Acertou! /etc/systemd/system/teste-jr.service removido."
  exit 0
fi
