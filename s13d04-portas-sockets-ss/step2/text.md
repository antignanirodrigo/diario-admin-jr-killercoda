## Ação: de outra VM, teste a porta correta e uma porta sem serviço.

Por quê: ver os dois sinais lado a lado (succeeded vs refused) é o que fixa a diferença antes de introduzir o terceiro sinal (timeout).

```bash
nc -zv 192.168.10.X 8080
nc -zv 192.168.10.X 9999
```

**Resultado esperado:** succeeded na porta certa, connection refused na porta sem serviço.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nc -zv` — Testa se uma porta TCP aceita conexão, em modo zero-I/O (-z) e verboso (-v) — revisado no Dia 3.
- `192.168.10.X 8080` — Porta com serviço real escutando — deve responder succeeded.
- `192.168.10.X 9999` — Porta sem nenhum serviço — deve responder connection refused, o contraste que fixa a diferença entre refused e timeout.
</details>

> **Cilada comum:** testar só uma porta e não comparar — sem o contraste, "refused" e "timeout" continuam parecendo a mesma coisa.
