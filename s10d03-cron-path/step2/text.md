## Ação: remova a linha de teste, escreva um script que usa um comando fora do PATH mínimo do cron, e confirme que ele falha quando agendado.

sentir esse "funciona no terminal, falha no cron" na prática é o que fixa a lição — não é intuitivo até você ver acontecer.

```bash
crontab -l | grep -v cronpath | crontab -
cat > teste.sh << 'EOF'
#!/bin/bash
rsync --version
EOF
chmod +x teste.sh
(crontab -l 2>/dev/null; echo "* * * * * $HOME/teste.sh >> /tmp/teste.log 2>&1") | crontab -
sleep 65 && cat /tmp/teste.log
```

**Resultado esperado:** "command not found" no log — reproduzindo exatamente o sintoma da história, mesmo com rsync funcionando perfeitamente no terminal.

> **Cilada comum:** testar só manualmente e nunca confirmar a execução agendada real — foi exatamente esse pulo que causou o ticket na história.
