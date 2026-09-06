## Ação: Ordene a lista por %CPU e identifique o processo no topo.

ordenar por %CPU é o que transforma uma lista de dezenas de processos numa resposta direta: "quem é o culpado" aparece no topo, sem precisar ler linha por linha.

```bash
# dentro do htop, pressione F6 e selecione PERCENT_CPU
```

**Resultado esperado:** lista reordenada, processo de maior consumo no topo, PID visível.

<details>
<summary>🔍 Detalhar esse atalho</summary>

- `F6` — Atalho de teclado dentro do htop que abre o menu de ordenação (Sort by).
- `PERCENT_CPU` — Opção do menu que reordena a lista de processos pelo percentual de uso de CPU, do maior para o menor.
</details>

> **Cilada comum:** ver %MEM baixo no processo do topo e descartar ele como "não é o problema" — como a história de hoje mostrou, CPU e memória são métricas independentes.
