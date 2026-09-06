## Ação: Pratique correlacionar horários entre dmesg e o log de uma aplicação de teste.

foi essa correlação exata (poucos segundos de diferença) que confirmou a causa real hoje — treinar esse olhar é o que faz a diferença numa investigação de verdade.

```bash
dmesg -T | tail -5
tail -5 /var/log/syslog
```

**Resultado esperado:** dois eventos alinhados no tempo, mesmo que de fontes diferentes.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dmesg -T` — Mostra as mensagens do kernel com timestamp convertido para data/hora legível.
- `| tail -5` — Mostra só as 5 últimas mensagens do kernel.
- `tail -5 /var/log/syslog` — Mostra as 5 últimas linhas do log geral do sistema, para comparar o horário com o evento de kernel.
</details>

> **Cilada comum:** assumir causa só por proximidade de horário sem checar o conteúdo das mensagens — coincidência de tempo é uma pista forte, não uma prova sozinha.
