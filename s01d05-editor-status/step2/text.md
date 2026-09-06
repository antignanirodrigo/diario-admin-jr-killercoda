## Ação: Abra qualquer arquivo de configuração com nano, navegue até o final, e saia sem salvar.

essa é a saída de emergência do nano — dominar ela é o que te dá liberdade de abrir qualquer arquivo pra ler, sem medo de estragar algo sem querer.

```bash
nano arquivo.conf
```

**Resultado esperado:** o arquivo continua exatamente igual depois — confirme comparando o tamanho ou o conteúdo antes e depois.

<details>
<summary>🔍 Detalhar essa sintaxe</summary>

- `nano` — Editor de texto simples de terminal, com atalhos mostrados na parte de baixo da tela.
- `arquivo.conf` — O arquivo aberto para leitura/edição.
- `Ctrl+X` — Atalho do nano para sair do editor.
- `N` — Resposta que recusa salvar as alterações quando o nano pergunta antes de sair.
</details>

> **Cilada comum:** apertar Ctrl+O (salvar) por reflexo em vez de Ctrl+X (sair) — são teclas próximas, e confundir as duas grava uma alteração que você nem queria fazer.
