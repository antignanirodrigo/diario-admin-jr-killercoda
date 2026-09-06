## Ação: adicione um CNAME apontando para o registro A e teste com dig.

Por quê: ver o resolvedor seguir o apelido até o IP final, na prática, fixa a diferença entre CNAME (aponta pra nome) e A (aponta pra IP).

```bash
dig www.empresa.local CNAME
dig www.empresa.local A
```

**Resultado esperado:** dig mostra o CNAME e, seguindo a cadeia, o IP final.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig ... CNAME` — Consulta especificamente o registro CNAME do nome — mostra se ele é um apelido apontando para outro nome, sem seguir a cadeia até o IP final.
- `dig ... A` — Consulta o registro A do mesmo nome — aqui o dig segue a cadeia do CNAME e retorna o IP final associado.
</details>

> **Cilada comum:** criar um CNAME apontando pra outro CNAME em cadeia longa — funciona, mas complica o diagnóstico e é evitado em produção.
