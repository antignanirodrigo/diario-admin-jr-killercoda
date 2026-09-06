## Ação: adicione || com registro de erro e exit 1 depois do tar.

esse é o encadeamento exato que teria evitado o backup corrompido da história — parar e registrar no primeiro sinal de falha real.

```bash
cat > backup.sh << 'EOF'
#!/bin/bash
LOG=~/lab_backup/backup.log
tar -czf backup.tgz ~/lab_backup/origem || { echo "ERRO no tar" >> "$LOG"; exit 1; }
echo "TAR OK" >> "$LOG"
EOF
chmod +x backup.sh
```

**Resultado esperado:** script preparado pra parar e registrar erro se o tar falhar, em vez de seguir cegamente.

> **Cilada comum:** esquecer o exit 1 depois do echo de erro — sem ele, o script registra o erro no log mas continua rodando de qualquer jeito.
