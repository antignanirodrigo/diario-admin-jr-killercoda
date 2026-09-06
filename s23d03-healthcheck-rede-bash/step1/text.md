## Ação: Crie o arquivo healthcheck.sh de verdade na sua VM — sem o arquivo existir com permissão de execução, nem o script mais simples roda.

esse é o pega-ratão mais comum de quem escreve o primeiro script bash: criar o arquivo não é suficiente, o sistema operacional exige a permissão de execução de forma explícita, separada da permissão de leitura/escrita.

```bash
cat > ~/healthcheck.sh <<'EOF'
#!/bin/bash
echo "=== Healthcheck $(date) ==="
EOF
./healthcheck.sh
bash: ./healthcheck.sh: Permission denied
chmod +x ~/healthcheck.sh
./healthcheck.sh
=== Healthcheck Tue Sep  1 16:00:00 2026 ===
```

**Resultado esperado:** "Permission denied" na primeira tentativa; depois do chmod +x, o script roda normalmente e imprime a linha de cabeçalho.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `chmod +x` — Adiciona (+) permissão de execução (x) ao arquivo — sem essa permissão, o sistema recusa rodar o script mesmo que o dono tenha permissão de leitura e escrita sobre ele.
- `~/healthcheck.sh` — O arquivo alvo — o til (~) expande automaticamente pro diretório home do usuário atual.
</details>

> **Cilada comum:** só em VM de laboratório — e anote o caminho do arquivo ( ~/healthcheck.sh ), você vai apagá-lo no teardown.

> **Se der diferente:** "Permission denied" mesmo depois do chmod +x → confirme que você está rodando com ./healthcheck.sh (caminho explícito) e não só healthcheck.sh — sem estar no PATH, o shell não encontra o script sem o ./ na frente. "bad interpreter: /bin/bash^M: no such file or directory" → o arquivo foi salvo com quebra de linha do Windows (CRLF). Rode sed -i 's/\r$//' ~/healthcheck.sh pra corrigir, ou instale e use dos2unix .
