## Ação: Espere a coleta acumular dados e consulte o histórico de CPU sem filtro de horário.

confirmar que existem dados é o passo antes de filtrar por período — sem isso, um sar -u vazio pode significar "sem carga" ou "sem coleta", e você precisa distinguir os dois.

```bash
sudo sadc
sar -u
```

**Resultado esperado:** pelo menos algumas linhas de dados históricos de CPU aparecendo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo sadc` — Força uma coleta imediata de métricas do sistema, sem esperar o próximo ciclo automático.
- `sar -u` — Consulta o histórico de uso de CPU já coletado.
</details>

> **Cilada comum:** rodar sar logo após instalar e concluir "não funciona" porque ainda não passou tempo suficiente pra acumular dados.

> **Se der diferente:** "Cannot open /var/log/sysstat/saXX: No such file or directory" → o sysstat acabou de ser instalado e ainda não gerou o arquivo do dia. Rode sudo sadc manualmente para forçar uma coleta imediata, ou aguarde o próximo ciclo automático do timer do systemd (geralmente a cada 10 minutos).
