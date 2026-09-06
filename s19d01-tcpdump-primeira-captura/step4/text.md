## Ação: Interrompa a captura com Ctrl+C e leia o resumo final de pacotes.

```bash
^C
5 packets captured
5 packets received by filter
0 packets dropped by kernel
```

**Resultado esperado:** contagem de packets captured / received by filter / dropped.

<details>
<summary>🔍 Detalhar esse resultado</summary>

- `^C` — Sinal de interrupção (Ctrl+C) enviado ao processo, encerrando a captura manualmente.
- `packets captured` — Quantos pacotes o tcpdump efetivamente viu passar pela interface.
- `packets received by filter` — Quantos desses pacotes bateram com o filtro aplicado — sem filtro nenhum, esse número iguala ao capturado.
- `packets dropped by kernel` — Quantos pacotes o kernel descartou por falta de recursos para processá-los a tempo — zero aqui confirma que nada se perdeu.
</details>
