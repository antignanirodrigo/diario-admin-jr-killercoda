## Ação: rode um dry-run simples, sem --delete ainda, e observe o que seria copiado.

acostumar o olho a ler a saída do dry-run antes de qualquer flag mais perigosa entrar em cena.

```bash
rsync -avn ~/lab/origem/ ~/lab/destino/
```

**Resultado esperado:** lista de arquivos que seriam copiados, nada alterado de verdade — a mensagem "DRY RUN" confirma isso.

> **Cilada comum:** confundir dry-run "sem erro" com "já copiou" — nada foi alterado ainda, é só simulação.
