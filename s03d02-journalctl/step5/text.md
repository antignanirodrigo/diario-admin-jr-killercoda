## Ação: Documente unidade, filtro usado, mensagem de erro, causa raiz e ação tomada.

registrar a causa raiz (não só "reiniciei e funcionou") é o que impede o mesmo problema de reaparecer sem ninguém entender por quê.

```bash
# não é comando de shell — é o registro final
# ex: "Unidade: app.service. Filtro: -u app.service -p err. Erro: porta 8080 ocupada por node (PID 2234). Ação: processo encerrado, porta liberada, restart validado."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "restart resolveu" sem registrar a causa raiz — some a informação mais valiosa da investigação inteira.
