## Ação: escreva um if usando uma variável SEM aspas, e teste com a variável vazia — reproduza o bug da história.

ver o erro acontecer de propósito, com uma variável que você mesmo deixou vazia, é o que fixa a causa raiz — não é abstrato, é reproduzível.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
if [ $DIR = "/var/log/app" ]; then
  echo "Limpando..."
fi
EOF
chmod +x teste.sh
unset DIR
./teste.sh
```

**Resultado esperado:** erro "unary operator expected", reproduzindo exatamente o bug da história de hoje.

> **Cilada comum:** testar só com a variável já definida (como eu fiz na história) e nunca descobrir o bug até ele acontecer em produção, com a variável vazia por algum motivo inesperado.
