## Ação: documente o que foi feito, como foi testado e o rollback provado.

Por quê: registrar que o rollback foi testado (não só planejado) é o que dá confiança pra próxima mudança maior.

```bash
# mudança: tcp dport 8080 accept
# teste: nc -zv confirmou succeeded
# rollback: testado e provado (nft -f backup.nft)
# reaplicação: confirmada novamente
```

**Resultado esperado:** relatório de mudança completo e aprovado — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** aprovar a mudança em produção baseado só no plano escrito, sem ter testado o rollback nem uma vez.
