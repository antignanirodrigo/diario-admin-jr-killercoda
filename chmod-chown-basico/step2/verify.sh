#!/bin/bash
# Script oculto — verifica se o usuario testeapp existe e é dono do arquivo
if ! id testeapp &>/dev/null; then
  echo "Erro: usuário testeapp não existe. Rode: sudo useradd testeapp"
  exit 1
fi

DONO=$(stat -c '%U' teste.log 2>/dev/null)
if [ "$DONO" == "testeapp" ]; then
  echo "Acertou! testeapp agora é dono de teste.log."
  exit 0
else
  echo "Erro: o dono de teste.log ainda não é testeapp (dono atual: $DONO). Rode: sudo chown testeapp:testeapp teste.log"
  exit 1
fi
