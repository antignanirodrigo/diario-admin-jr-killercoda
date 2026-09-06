## Ação: Veja outros tipos de histórico disponíveis além de CPU.

sar não é só CPU — conhecer as outras métricas amplia o que você consegue investigar retroativamente, não só picos de processamento.

```bash
sar -r
sar -b
```

**Resultado esperado:** dados históricos de memória e I/O, além de CPU.

<details>
<summary>🔍 Detalhar esses comandos</summary>

- `sar` — Consulta dados HISTÓRICOS de desempenho coletados periodicamente pelo sysstat — diferente de top/ps, que só mostram o momento atual.
- `-r` — Relatório de uso de memória RAM ao longo do tempo.
- `-b` — Relatório de atividade de I/O (leitura/escrita em disco) ao longo do tempo — usado no comando seguinte, sar -b, para comparar com a memória.
</details>

> **Cilada comum:** assumir que sar -u sozinho resolve qualquer investigação histórica — memória e I/O podem ser a causa real, não CPU.
