#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet dnsmasq; then
  echo "Acertou! dnsmasq está ativo."
  exit 0
else
  echo "Erro: dnsmasq não está ativo. Rode: sudo systemctl start dnsmasq"
  exit 1
fi
