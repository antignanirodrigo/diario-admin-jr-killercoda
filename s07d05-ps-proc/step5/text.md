## Ação: documente a árvore completa de um processo, fechando a Semana 7.

esse tipo de registro é exatamente o que um ticket de investigação de segurança precisa como evidência — árvore completa, confirmada por duas fontes, com conclusão sobre a origem.

```bash
Processo: [nome] (PID [x])
Árvore: init -> sshd -> bash -> [processo]
PPid confirmado via /proc: [ppid]
Origem: humana (via SSH) / automática (systemd/cron)
```

**Resultado esperado:** relatório completo reproduzindo o painel 6 da prancha de hoje, fechando o toolkit de controle de processos da semana.

> **Cilada comum:** documentar só o PID e nome do processo, sem a cadeia completa — é justamente a cadeia que prova (ou refuta) a origem suspeita.
