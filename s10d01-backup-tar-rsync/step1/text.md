## Ação: escreva um script de backup simples com tar, sem nenhuma verificação de erro ainda.

ver a versão ingênua funcionando é o ponto de partida — ela "funciona" no caso normal, exatamente como o script da história antes de eu descobrir o problema.

```bash
mkdir -p ~/lab_backup/origem && touch ~/lab_backup/origem/arquivo.txt
cat > backup.sh << 'EOF'
#!/bin/bash
tar -czf backup.tgz ~/lab_backup/origem
echo "Backup concluído"
EOF
chmod +x backup.sh && ./backup.sh
```

**Resultado esperado:** script funcional no caminho feliz, sem tratamento de erro — sempre imprime "Backup concluído", mesmo que algo falhe.

> **Cilada comum:** testar só esse caminho feliz e nunca simular uma falha — é exatamente esse ponto cego que causou o backup corrompido da história.
