## Ação: rode journalctl -b e identifique as etapas BIOS, GRUB, kernel, initramfs e systemd nos logs.

Por quê: journalctl -b é a fonte bruta — sem filtro, sem interpretação, só o registro exato do que aconteceu, na ordem em que aconteceu.

```bash
journalctl -b | head -20
```

**Resultado esperado:** linha do tempo completa do boot atual visível.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `journalctl` — Lê os logs centralizados do systemd (o journal).
- `-b` — Mostra só as mensagens do boot atual (current boot), em vez do histórico de todos os boots já registrados.
- `| head -20` — Mostra só as 20 primeiras linhas dessa saída — o início da sequência de boot.
</details>

> **Se der diferente:** a saída parece vazia ou é de um boot antigo → confira com journalctl --list-boots e escolha o número do boot certo com journalctl -b -1 (ou o índice mostrado) — o sistema pode ter sido reiniciado mais de uma vez desde então.
