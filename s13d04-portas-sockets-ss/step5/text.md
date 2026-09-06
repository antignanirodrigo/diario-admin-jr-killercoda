## Ação: documente o diagnóstico completo.

Por quê: registrar o sinal exato observado (não só "resolvido") é o que ensina você a reconhecer o padrão refused-vs-timeout da próxima vez.

```bash
# serviço: escutando (ss confirmou)
# sinal remoto: timeout (não refused)
# causa: firewall policy drop sem regra accept
# correção: tcp dport 8080 accept
```

**Resultado esperado:** checklist completo do diagnóstico — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** anotar "adicionei regra de firewall" sem registrar qual porta e qual sinal motivou — a próxima pessoa (ou você, meses depois) não vai entender o raciocínio.
