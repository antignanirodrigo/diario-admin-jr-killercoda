## Ação: compare o campo SERVER entre uma consulta ao resolvedor local e uma direta ao autoritativo.

Por quê: essa comparação lado a lado é o que prova, na prática, a diferença entre cache e fonte da verdade — não é só teoria.

```bash
dig app.empresa.local A
dig @192.168.10.20 app.empresa.local A
```

**Resultado esperado:** ambos retornam a mesma resposta, mas de fontes diferentes.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig app.empresa.local A` — Consulta normal — usa o resolvedor configurado no sistema (geralmente em /etc/resolv.conf ), que pode responder direto do cache.
- `@192.168.10.20` — Força a consulta a ir direto a ESSE servidor específico, ignorando o resolvedor padrão — aqui, apontando pro servidor autoritativo da zona, pra comparar a resposta "de fonte" com a resposta "em cache".
</details>

> **Cilada comum:** assumir que a resposta do resolvedor local está sempre atualizada só porque bate com o autoritativo agora — o cache pode ficar desatualizado depois de uma mudança recente.
