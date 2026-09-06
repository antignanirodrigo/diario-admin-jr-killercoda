## Ação: construa o filtro isoladamente e confirme que só as linhas certas aparecem.

testar o filtro sozinho primeiro é a "camada" que a Questão 2 vai testar — confirmar visualmente antes de confiar num número final.

```bash
awk '$7==200 {print}' teste.log
```

**Resultado esperado:** só as duas linhas com status 200 aparecem, confirmando que o filtro está correto antes de somar qualquer coisa.

> **Cilada comum:** pular direto pra soma sem confirmar o filtro primeiro — se o filtro estiver errado, a soma final "parece" plausível mas está tecnicamente incorreta.
