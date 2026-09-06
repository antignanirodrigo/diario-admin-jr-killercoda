#!/bin/bash
# Script oculto - gerado automaticamente
if systemctl is-active --quiet app-x.service; then
  echo "Acertou! app-x.service está ativo."
  exit 0
else
  echo "Erro: app-x.service não está ativo. Rode: sudo systemctl start app-x.service"
  exit 1
fi
