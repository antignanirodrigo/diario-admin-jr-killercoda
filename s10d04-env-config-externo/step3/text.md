## Ação: adapte o script de teste pra ler do arquivo de configuração em vez de receber a senha como argumento, e confirme com ps aux que ela não aparece mais.

```bash
cat > teste_senha2.sh <<'EOF'
#!/bin/bash
source /tmp/teste_creds.cnf 2>/dev/null || . <(grep = /tmp/teste_creds.cnf)
echo "conectando ao banco (senha lida de arquivo protegido)"
sleep 30
EOF
chmod +x teste_senha2.sh
./teste_senha2.sh &
ps aux | grep teste_senha2
usr  8830  ./teste_senha2.sh
```

**Resultado esperado:** ps aux não mostra mais a senha na linha de comando — só o nome do script.

> **Cilada comum:** esquecer de aplicar chmod 600 no arquivo novo, achando que só "separar" já resolveu — sem a permissão restrita, o risco continua, só mudou de lugar.
