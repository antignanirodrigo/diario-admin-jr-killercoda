## Ação: adicione uma guarda com grep -qF antes de adicionar a linha, e teste de novo.

```bash
cat > add_linha2.sh <<'EOF'
#!/bin/bash
LINHA="192.168.1.50 backup-srv"
grep -qF "$LINHA" teste_hosts2.txt 2>/dev/null || echo "$LINHA" >> teste_hosts2.txt
EOF
chmod +x add_linha2.sh
./add_linha2.sh
./add_linha2.sh
cat teste_hosts2.txt
192.168.1.50 backup-srv
```

**Resultado esperado:** mesmo rodando duas vezes, só uma linha no arquivo.

> **Cilada comum:** escrever a guarda checando a coisa errada (por exemplo, só se o arquivo existe, não se a linha específica existe) — isso passa no teste ingênuo mas não garante idempotência real.
