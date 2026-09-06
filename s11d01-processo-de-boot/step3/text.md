## Ação: rode systemd-analyze blame | head e identifique o serviço mais lento.

```bash
systemd-analyze blame | head
```

**Resultado esperado:** lista ordenada de serviços por tempo gasto no boot.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemd-analyze` — Ferramenta que mede e detalha o tempo gasto em cada etapa do boot gerenciado pelo systemd.
- `blame` — Subcomando que lista os serviços do boot ordenados do que MAIS demorou para o que menos demorou — 'quem é o culpado' pela demora.
- `| head` — Mostra só os primeiros da lista (por padrão, 10 linhas) — os maiores consumidores de tempo de boot.
</details>

> **Cilada comum:** ver o serviço no topo da lista e já querer desativá-lo — o comando mostra ONDE o tempo foi gasto, não diz automaticamente que aquele serviço é dispensável.

> **Se der diferente:** "Bootup is not yet finished" → o systemd ainda está processando serviços de inicialização tardia. Aguarde o prompt de login estabilizar por completo antes de rodar o comando, ou os números virão incompletos.
