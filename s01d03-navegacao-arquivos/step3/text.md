## Ação: Abra um arquivo de log com less e navegue com as setas, depois saia sem alterar nada.

less carrega o arquivo sob demanda, página por página — é a ferramenta certa pra qualquer arquivo que você não sabe o tamanho antes de abrir.

```bash
less app.log
```

**Resultado esperado:** você consegue rolar pra cima e pra baixo sem o terminal ficar poluído, e sair sem alterar nada.

<details>
<summary>🔍 Detalhar essa ferramenta</summary>

- `less` — Paginador interativo: carrega o arquivo sob demanda (não lê tudo de uma vez), permitindo rolar página por página.
- `app.log` — O arquivo aberto para leitura.
- `setas` — Navegam para cima/baixo dentro do arquivo, uma linha ou página por vez.
- `q` — Tecla que sai do less sem alterar o arquivo.
</details>

> **Cilada comum:** abrir com cat por hábito, mesmo depois de aprender a diferença — num log de produção de milhares de linhas isso afoga o terminal na hora.
