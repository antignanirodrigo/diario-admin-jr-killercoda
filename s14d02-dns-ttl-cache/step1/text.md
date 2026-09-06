## Ação: consulte um registro e anote o valor de TTL retornado.

Por quê: anotar o TTL antes de qualquer mudança dá o prazo esperado até uma alteração se propagar — sem isso, você não sabe se ainda é normal ver a resposta antiga.

```bash
dig app.intra.example A
```

**Resultado esperado:** valor numérico de TTL visível na resposta do dig.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig` — Ferramenta de diagnóstico DNS — mostra a resposta completa de uma consulta, incluindo o TTL.
- `app.intra.example A` — Consulta o registro A (IPv4) desse nome interno; o valor de TTL na resposta é o dado que interessa hoje.
</details>

> **Cilada comum:** ignorar o valor do TTL e assumir "deveria já ter atualizado" sem checar quanto tempo realmente falta.
