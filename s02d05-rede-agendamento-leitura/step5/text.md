## Ação: Documente um relatório com IP atual, rota padrão, tarefas agendadas e diferenças de configuração encontradas.

esse relatório de achados é o produto real de uma investigação somente-leitura — não é "não fiz nada hoje", é "documentei exatamente o estado do ambiente".

```bash
# não é comando de shell — é o relatório final, 4 itens
# ex: "IP: 192.168.1.50/24. Rota padrão: 192.168.1.1. Cron: vazio pro meu usuário (verificar root/etc/cron.d separadamente). Diff: timeout 30→60, autor desconhecido."
```

**Resultado esperado:** um relatório de 4 itens, reproduzindo o painel 6 da prancha de hoje — fechando a Semana 2.

> **Cilada comum:** misturar "achados" com "ações que eu acho que deveriam ser feitas" no mesmo relatório — mantenha os dois separados, decisão de agir é de outro momento.
