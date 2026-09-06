## Ação: documente PATH do shell vs. PATH do cron, correção aplicada, validação da execução agendada.

documentar os dois PATHs lado a lado é o que prova, pra qualquer revisão futura, exatamente qual era a diferença e por que a correção funciona.

```bash
PATH shell: /usr/local/bin:/usr/bin:/bin:...
PATH cron: /usr/bin:/bin (bem mais curto)
Correção: PATH explícito declarado no topo do script
Validado: execução agendada real confirmada, não só teste manual
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "corrigido", sem registrar os dois PATHs comparados — sem esse contraste, fica difícil explicar a causa raiz pra outra pessoa.
