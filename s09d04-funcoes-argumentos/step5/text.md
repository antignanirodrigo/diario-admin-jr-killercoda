## Ação: documente função criada, argumentos usados, resultado das três chamadas.

documentar a função e suas chamadas é o que permite outra pessoa (ou você, meses depois) entender rapidamente o que ela faz, sem precisar ler o código inteiro de novo.

```bash
Função: verificar_arquivo(arq)
Chamadas: app.log, erro.log, config.conf
Resultado: as três reportam existe/faltando corretamente, sem código duplicado
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "criei uma função", sem listar os argumentos esperados — sem isso, reusar a função depois exige reler o código pra descobrir a assinatura.
