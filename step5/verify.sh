#!/bin/bash
# Script oculto — confirma que a limpeza foi feita: usuario e arquivo removidos
if id testeapp &>/dev/null; then
  echo "Erro: usuário testeapp ainda existe. Rode: sudo userdel testeapp"
  exit 1
fi

if [ -f "teste.log" ]; then
  echo "Erro: teste.log ainda existe. Rode: rm teste.log"
  exit 1
fi

echo "Acertou! Servidor limpo — usuário e arquivo de teste removidos. Chamado #4650 fechado."
exit 0
