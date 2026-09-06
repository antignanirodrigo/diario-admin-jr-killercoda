## Ação: rode o script corrigido 5 vezes seguidas e confirme com grep -c que o resultado continua sendo 1.

```bash
for i in 1 2 3 4 5; do ./add_linha2.sh; done
grep -c "backup-srv" teste_hosts2.txt
```

**Resultado esperado:** contagem sempre 1, confirmando idempotência real.
