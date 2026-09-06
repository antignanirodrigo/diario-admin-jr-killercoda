## Ação: crie um arquivo de teste com algumas linhas repetidas, simulando um log.

um arquivo pequeno com resultado esperado conhecido (você sabe que 10.0.0.1 deve vencer) é o que permite validar cada etapa da cadeia com confiança.

```bash
cat > teste.log << 'EOF'
10.0.0.1 GET /home
10.0.0.2 GET /login
10.0.0.1 GET /home
10.0.0.3 GET /home
10.0.0.1 GET /login
EOF
```

**Resultado esperado:** arquivo de teste com repetições intencionais, IP 10.0.0.1 aparecendo 3 vezes.

> **Cilada comum:** testar direto num arquivo grande de produção — sem saber a resposta certa de antemão, fica impossível confirmar se o pipeline está funcionando.
