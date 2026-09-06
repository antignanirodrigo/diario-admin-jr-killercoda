#!/bin/bash
# Script oculto — verifica se o aluno criou teste.log
if [ -f "teste.log" ]; then
  echo "Acertou! teste.log existe."
  exit 0
else
  echo "Erro: teste.log não encontrado. Rode: touch teste.log"
  exit 1
fi
