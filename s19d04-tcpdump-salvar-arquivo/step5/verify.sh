#!/bin/bash
# Script oculto - gerado automaticamente
if [ -e "~/teste.pcap" ]; then
  echo "Erro: ~/teste.pcap ainda existe. Rode: rm ~/teste.pcap"
  exit 1
else
  echo "Acertou! ~/teste.pcap removido."
  exit 0
fi
