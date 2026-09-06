## Ação: altere o registro no autoritativo e consulte de novo via resolvedor normal, antes do TTL expirar.

Por quê: reproduzir esse comportamento de propósito é o que prova, na prática, que "resposta antiga" e "mudança que falhou" são coisas diferentes.

```bash
dig app.intra.example A
```

**Resultado esperado:** resposta ainda antiga, mesmo com o autoritativo já mudado.

<details>
<summary>🔍 Detalhar este cenário</summary>

- `alterar o registro no autoritativo` — Ação feita fora do terminal do cliente — no servidor DNS autoritativo da zona, simulando uma mudança real de IP.
- `dig app.intra.example A` — Mesma consulta de antes, repetida logo após a mudança no autoritativo — ainda usando o resolvedor normal, que pode responder do cache.
</details>

> **Cilada comum:** editar o registro de novo neste ponto, achando que a primeira edição não funcionou — ela funcionou; o cache é que ainda não expirou.
