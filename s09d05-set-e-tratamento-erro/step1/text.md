## Ação: escreva um script SEM set -e, com um cd pra uma variável não definida, e observe que ele continua rodando mesmo assim.

ver o script continuar depois de uma falha real, sem nenhum aviso, é o que faz o perigo do "backup.sh funcionou no teste" deixar de ser abstrato.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
cd "$PASTA_ERRADA"
echo "continuei"
EOF
chmod +x teste.sh
./teste.sh
```

**Resultado esperado:** "continuei" aparece na tela mesmo com o cd tendo falhado silenciosamente — reproduzindo exatamente o risco da história.

> **Cilada comum:** testar só o caminho feliz (variável definida corretamente) e nunca descobrir esse comportamento até ele acontecer com dados reais em produção.
