## Ação: crie um script sem shebang, com uma variável e um teste [[ ]], e tente rodar direto.

reproduzir o exato sintoma da história de hoje — [[ ]] falhando sem shebang — é o que fixa a lição na prática, não só na teoria.

```bash
cat > teste.sh << 'EOF'
BACKUP_DIR=/dados
if [[ -d "$BACKUP_DIR" ]]; then echo "existe"; fi
EOF
./teste.sh
```

**Resultado esperado:** "Permission denied" primeiro (sem chmod); depois de chmod +x, um erro de sintaxe relacionado ao [[.

> **Cilada comum:** confundir "Permission denied" (falta chmod) com o erro de sintaxe do interpretador errado (falta shebang) — são dois problemas diferentes que aparecem em sequência.
