## Ação: Documente o chamado completo: causa observada, aprovação recebida, restart executado, serviço validado.

um chamado sem esse registro completo não prova nada pra quem revisar depois — "reiniciei e funcionou" não é a mesma coisa que uma mudança documentada e reversível.

```bash
# não é comando de shell — é o registro final, 4 linhas
# ex: "Causa: app.service failed (exit-code). Aprovação: Sênior, 10:23. Ação: restart às 10:24. Validação: active (running) estável após 2min."
```

**Resultado esperado:** um registro de 4 linhas que reproduz exatamente a sequência do painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o restart, sem a causa nem a validação — um registro incompleto obriga quem ler depois a refazer parte da investigação.
