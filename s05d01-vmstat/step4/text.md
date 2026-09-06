## Ação: Encerre o teste de carga e confirme o retorno ao normal.

validar o "depois" contra o "antes" é o que prova que o sistema realmente voltou ao normal, não só a impressão de que voltou.

```bash
vmstat 2 5
```

**Resultado esperado:** so e wa retornando aos valores de referência do passo 1.

> **Cilada comum:** encerrar o teste e não validar o retorno — sem essa checagem final, você não sabe se a pressão de memória realmente cessou.
