## Ação: Documente o relatório de acesso final, fechando a Semana 3.

um relatório de segurança que cita as fontes explicitamente é o que dá credibilidade à conclusão — "cruzei 3 fontes" pesa muito mais que "eu vi no log".

```bash
# não é comando de shell — é o relatório final
# ex: "Fontes cruzadas: last, lastlog, auditd. Achado: maria login 08:10, sudo -i 08:13, leu /etc/shadow 08:15. Conta joao: never logged in, investigar por que existe."
```

**Resultado esperado:** relatório completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** escrever a conclusão sem mencionar quais fontes foram cruzadas — sem essa transparência, quem revisar depois não sabe se a investigação foi completa ou superficial.
