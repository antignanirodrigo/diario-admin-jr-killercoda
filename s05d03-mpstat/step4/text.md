## Ação: Encerre o processo de teste e confirme o retorno ao normal.

validar que TODOS os núcleos voltam ao normal (não só o médio) é a prova completa de que o teste terminou como esperado.

```bash
kill %1
mpstat -P ALL 2
```

**Resultado esperado:** todos os núcleos voltando a valores baixos de uso.

> **Cilada comum:** validar só a média geral no final, sem checar núcleo por núcleo — é exatamente o hábito que a aula toda existe pra quebrar.
