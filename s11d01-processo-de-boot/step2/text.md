## Ação: rode systemd-analyze e anote o tempo total, dividido entre kernel e userspace.

Por quê: separar kernel de userspace já diz em qual metade do boot procurar — kernel lento é hardware/firmware, userspace lento é serviço.

```bash
systemd-analyze
```

**Resultado esperado:** algo como Startup finished in Xs (kernel) + Ys (userspace).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemd-analyze` — Sem subcomando, mostra o resumo do tempo total de boot — quanto o kernel levou para carregar e quanto o userspace (systemd + serviços) levou até o alvo final.
- `Startup finished in Xs (kernel) + Ys (userspace)` — Formato fixo da saída: a primeira parcela é o tempo de firmware+kernel até o systemd assumir; a segunda é o tempo do systemd até o sistema ficar pronto.
</details>
