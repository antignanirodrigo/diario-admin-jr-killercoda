## Ação: escreva um script com um bloco de lógica repetido duas vezes, com pequena variação — reproduza a duplicação da história.

ver a duplicação com os próprios olhos, num exemplo pequeno, é o que fixa por que ela é um problema — não é abstrato, é o mesmo bloco copiado, pronto pra divergir silenciosamente.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
echo "verificando app.log"
[ -f app.log ] && echo "existe" || echo "faltando"
echo "verificando erro.log"
[ -f erro.log ] && echo "existe" || echo "faltando"
EOF
chmod +x teste.sh
./teste.sh
```

**Resultado esperado:** script funcionando, mas com duplicação visível — o mesmo padrão de checagem repetido duas vezes.

> **Cilada comum:** achar que duplicação "não faz mal" em blocos pequenos — foi exatamente um bloco pequeno, copiado três vezes, que causou o falso positivo da história.
