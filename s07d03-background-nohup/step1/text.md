## Ação: crie um script de teste que roda por alguns minutos, imprimindo progresso.

um script simples com progresso visível é o que permite testar de verdade se a proteção contra queda de sessão está funcionando.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
for i in $(seq 1 30); do echo "progresso: $i/30"; sleep 5; done
EOF
chmod +x teste.sh
```

**Resultado esperado:** script de teste criado e executável, rodando por ~2.5 minutos.

> **Cilada comum:** usar um comando curto demais no teste — sem tempo suficiente rodando, você não consegue testar a desconexão real no meio da execução.
