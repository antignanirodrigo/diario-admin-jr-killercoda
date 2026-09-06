## Ação: adicione uma validação explícita com [ ! -d ] antes do cd, com mensagem de erro clara.

essa é a segunda camada, a que realmente garante segurança — set -e para o script, mas é a validação explícita que garante que ele nunca chega perto do comando destrutivo com um alvo errado.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
set -e
if [ ! -d "$PASTA_ERRADA" ]; then
  echo "ERRO: diretório inválido" >&2
  exit 1
fi
cd "$PASTA_ERRADA"
echo "continuei"
EOF
./teste.sh; echo "exit code: $?"
```

**Resultado esperado:** mensagem "ERRO: diretório inválido" — mais clara e específica que o erro genérico do cd.

> **Cilada comum:** confiar só na mensagem genérica de erro do cd — ela não diz claramente ao próximo operador (ou a você mesmo, meses depois) o que realmente deu errado.
