## Ação: Encerre o processo de teste e documente PID, %CPU, %MEM e load average antes/depois.

comparar o "antes" e o "depois" com números concretos é a prova de que a ação realmente resolveu — sem essa comparação, "achei que melhorou" não é validação de verdade.

```bash
kill %1
top
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `kill` — Envia um sinal para terminar um processo.
- `%1` — Referência ao job 1 em segundo plano desta sessão de shell (o 'yes' iniciado antes) — não é o PID.
- `top` — Reexecutado para confirmar que a carga de CPU e o load average voltaram ao normal depois do kill.
</details>

> **Cilada comum:** encerrar o laboratório sem rodar o top de "depois" — sem essa segunda leitura, você não tem evidência formal de que a carga voltou ao normal.

> **Se der diferente:** "bash: kill: %1: no such job" → o job pode ter outro número se você rodou outros comandos em background antes. Rode jobs primeiro pra confirmar o número certo, ou use pkill yes para matar por nome.
