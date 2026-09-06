## Ação: Compare o início e o final do mesmo arquivo.

saber que existem essas duas pontas evita abrir o arquivo inteiro só pra ver o começo ou o fim — economiza tempo numa investigação real.

```bash
head -20 app.log
tail -20 app.log
```

**Resultado esperado:** head mostra o início do arquivo, tail mostra o final — conteúdos diferentes do mesmo arquivo.

<details>
<summary>🔍 Detalhar esses comandos</summary>

- `head` — Mostra o INÍCIO de um arquivo — por padrão, as 10 primeiras linhas.
- `-20` — Quantidade de linhas a mostrar — aqui, as primeiras 20.
- `tail` — Mostra o FINAL de um arquivo — por padrão, as 10 últimas linhas.
- `-20 (no tail)` — Quantidade de linhas a mostrar — aqui, as últimas 20.
</details>

> **Cilada comum:** achar que head e tail mostram a mesma coisa só que "diferente" — são pontas opostas do arquivo, não a mesma informação reorganizada.
