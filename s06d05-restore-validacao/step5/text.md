## Ação: documente o restore completo, fechando a Semana 6 e a Fase 1 de storage.

esse relatório é a evidência que fecha o ticket com prova concreta — "está resolvido" vira "aqui está exatamente o que foi feito e validado".

```bash
Backup usado: ~/lab/destino (criado no Dia 4)
Restaurado em teste: ~/lab/restore_test -> validado com diff + find
Movido pra produção: ~/lab/origem, restaurado com sucesso
```

**Resultado esperado:** relatório completo reproduzindo o painel 6 da prancha de hoje, do sintoma até a prova de que o backup funciona de verdade.

> **Cilada comum:** fechar o chamado só com "restaurado com sucesso", sem registrar os passos de validação — sem evidência, ninguém mais confia (nem você mesmo, no futuro) que o processo foi seguido direito.
