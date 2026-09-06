## Ação: teste também o caso onde todos os checks passam, confirmando que exit 0 continua funcionando corretamente.

confirmar o caso totalmente saudável é o que garante que a correção não introduziu um novo problema, tipo alertar mesmo quando está tudo bem.

```bash
sed -i 's/return 1/return 0/g; s/FALHA/OK/g' check.sh
./check.sh; echo "exit code: $?"
```

**Resultado esperado:** exit code 0 — quando tudo está realmente saudável, o script confirma isso corretamente, sem falso alarme.

> **Cilada comum:** testar só cenários de falha e nunca confirmar o caso saudável — um healthcheck que sempre alerta é tão inútil quanto um que nunca alerta.
