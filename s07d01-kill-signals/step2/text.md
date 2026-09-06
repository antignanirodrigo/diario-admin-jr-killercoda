## Ação: envie SIGTERM pro PID e confirme com ps -p que ele terminou.

sleep responde normalmente a SIGTERM — é o exemplo mais simples de que o pedido educado, na maioria dos casos, já resolve.

```bash
kill -15 <PID>
ps -p <PID>
```

**Resultado esperado:** processo encerrado com o sinal educado — "nenhum processo encontrado" no ps -p, sem precisar de -9.

> **Cilada comum:** não checar com ps -p depois — a mensagem de kill não confirma que o processo realmente terminou, só que o sinal foi enviado.
