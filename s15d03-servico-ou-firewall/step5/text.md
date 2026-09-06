## Ação: documente serviço confirmado, causa isolada, correção aplicada.

Por quê: registrar as duas evidências (não só a conclusão) é o que prova que o diagnóstico foi metódico, não um chute que deu certo.

```bash
# serviço: escutando (ss confirmou)
# firewall: policy drop, sem regra pra 8080 (nft confirmou)
# correção: tcp dport 8080 accept
# firewall: permaneceu ativo o tempo todo
```

**Resultado esperado:** ticket documentado como resolvido, com evidências completas — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** registrar só "firewall corrigido" sem anotar que o serviço também foi checado — a próxima pessoa pode assumir que só uma causa foi investigada.
