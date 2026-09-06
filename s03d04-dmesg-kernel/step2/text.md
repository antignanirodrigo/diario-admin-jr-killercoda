## Ação: Filtre só eventos de erro e aviso, cortando ruído informativo.

o kernel gera MUITAS mensagens informativas de rotina — filtrar por prioridade é o que separa sinal real de ruído de fundo.

```bash
dmesg -l err,warn
```

**Resultado esperado:** lista bem menor, só com eventos relevantes, sem o ruído informativo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dmesg` — Mostra as mensagens do kernel.
- `-l err,warn` — Filtra por nível de prioridade, mostrando só mensagens de erro ou aviso — corta o volume grande de mensagens puramente informativas do kernel.
</details>

> **Cilada comum:** filtrar tão agressivamente que perde contexto — às vezes um evento "info" logo antes de um "err" é parte da mesma história.
