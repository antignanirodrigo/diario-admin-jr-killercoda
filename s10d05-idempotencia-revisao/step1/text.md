## Ação: escreva um script simples SEM guarda que adiciona uma linha a um arquivo de teste, e rode duas vezes.

Por quê: o script só sabe fazer uma coisa — acrescentar — sem nunca checar se o efeito já existe.

```bash
cat > add_linha.sh <<'EOF'
#!/bin/bash
echo "192.168.1.50 backup-srv" >> teste_hosts.txt
EOF
chmod +x add_linha.sh
./add_linha.sh
./add_linha.sh
cat teste_hosts.txt
192.168.1.50 backup-srv
192.168.1.50 backup-srv
```

**Resultado esperado:** linha duplicada no arquivo, reproduzindo o problema.
