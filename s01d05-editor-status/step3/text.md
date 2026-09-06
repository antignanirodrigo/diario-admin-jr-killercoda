## Ação: Repita o mesmo processo com vim.

vim aparece em praticamente todo servidor Linux por padrão — não saber pelo menos sair dele sem salvar é um problema clássico de quem só conhece nano.

```bash
vim arquivo.conf
```

**Resultado esperado:** mesmo resultado do nano — arquivo intacto, você saiu sem alterar nada.

<details>
<summary>🔍 Detalhar essa sintaxe</summary>

- `vim` — Editor de texto modal — alterna entre modo de comando e modo de inserção de texto.
- `arquivo.conf` — O arquivo aberto para leitura/edição.
- `i` — Entra em modo de INSERÇÃO, permitindo digitar texto no arquivo.
- `Esc` — Sai do modo de inserção e volta ao modo de comando.
- `:q` — Comando de modo normal que sai do vim sem salvar nada.
</details>

> **Cilada comum:** ficar "preso" no vim sem saber sair, e digitar letras aleatórias tentando escapar — cada letra digitada em modo de inserção pode alterar o arquivo. Se travar, Esc primeiro, sempre.
