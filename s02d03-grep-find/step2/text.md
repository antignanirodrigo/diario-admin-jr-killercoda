## Ação: Busque o texto ERROR na pasta de teste e confirme que só o arquivo certo aparece.

-r garante que a busca entra em subpastas, -n mostra a linha exata — sem esses dois, você teria que adivinhar em qual subpasta e em qual linha está o que procura.

```bash
grep -rn "ERROR" .
```

**Resultado esperado:** saída mostrando nome do arquivo, número da linha e o texto encontrado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `grep` — Busca um padrão de texto dentro de arquivos.
- `-r` — Recursivo: entra em todas as subpastas a partir do ponto de partida, em vez de olhar só o nível atual.
- `-n` — Mostra o número da linha onde o texto foi encontrado, junto com o nome do arquivo.
- `"ERROR"` — O padrão de texto procurado, entre aspas para tratar como uma string literal.
- `.` — O ponto de partida da busca: a pasta atual.
</details>

> **Cilada comum:** esquecer o -r numa estrutura com subpastas — o grep roda sem erro, só que silenciosamente não procura nada além do nível atual, dando falsa sensação de "não encontrado".

> **Se der diferente:** grep não retorna nada, mesmo com o texto no arquivo → confirme que está na pasta certa com pwd , e que a capitalização bate exatamente. Use grep -rni "ERROR" . pra ignorar maiúsculas/minúsculas enquanto testa.
