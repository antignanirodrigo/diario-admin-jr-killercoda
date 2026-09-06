## Ação: reproduza o risco — escreva um script de teste que recebe uma senha fictícia como argumento e imprime "conectando com senha $1", rode em background.

Por quê: qualquer processo em execução expõe seus argumentos completos pra qualquer usuário do sistema — isso é comportamento normal do kernel, não um bug.

```bash
cat > teste_senha.sh <<'EOF'
#!/bin/bash
echo "conectando com senha $1"
sleep 30
EOF
chmod +x teste_senha.sh
./teste_senha.sh SENHA_FICTICIA_123 &
ps aux | grep teste_senha
usr  8821  ./teste_senha.sh SENHA_FICTICIA_123
```

**Resultado esperado:** senha fictícia visível na saída do ps aux, reproduzindo o risco.
