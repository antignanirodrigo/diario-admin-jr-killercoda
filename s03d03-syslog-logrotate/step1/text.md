## Ação: Crie um arquivo de teste e mantenha ele aberto num processo.

você precisa de um arquivo "vivo" de verdade pra reproduzir o cenário real — um processo com o arquivo aberto é exatamente o que faz um rm parecer não liberar espaço.

```bash
touch teste.log
tail -f teste.log
```

**Resultado esperado:** processo tail rodando, arquivo sendo acompanhado ao vivo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `touch teste.log` — Cria o arquivo de teste vazio.
- `tail -f teste.log` — Abre o arquivo em modo 'follow', mantendo-o aberto e acompanhando novas linhas ao vivo — é esse processo que vai 'prender' o arquivo depois.
</details>

> **Cilada comum:** testar isso num arquivo real de produção — sempre use um arquivo de teste isolado pra esse tipo de experimento.
