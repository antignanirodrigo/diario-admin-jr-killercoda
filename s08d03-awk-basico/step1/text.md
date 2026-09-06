## Ação: crie um arquivo de log de teste com algumas linhas simulando status e tamanho de resposta.

saber a resposta certa de antemão (3072) é o que permite validar cada etapa da cadeia com confiança, exatamente como você já fez com cut/sort/uniq.

```bash
cat > teste.log << 'EOF'
10.0.0.1 - - [01/Jan] "GET /home" 200 1024
10.0.0.2 - - [01/Jan] "GET /login" 404 512
10.0.0.1 - - [01/Jan] "GET /about" 200 2048
EOF
```

**Resultado esperado:** arquivo de teste pronto, com colunas identificáveis, resultado esperado conhecido (200+200 = 3072 bytes).

> **Cilada comum:** testar direto num log real de produção sem saber a resposta esperada — sem isso, fica impossível confirmar se a lógica do awk está certa.
