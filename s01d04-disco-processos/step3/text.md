## Ação: Meça 3 pastas diferentes e compare os tamanhos pra achar a responsável.

df diz QUE partição está cheia, mas não diz QUAL pasta é a culpada — du é o passo que localiza a causa dentro do sintoma que df apontou.

```bash
du -sh /var/log
du -sh /home
du -sh /tmp
```

**Resultado esperado:** três valores diferentes, permitindo identificar qual pasta consome mais espaço.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `du` — Mostra o espaço em disco ocupado por arquivos e pastas.
- `-s` — Resume (summarize): mostra só o total da pasta, sem listar cada subpasta separadamente.
- `-h` — Formato legível por humanos (K, M, G).
- `/var/log, /home, /tmp` — As três pastas medidas para comparar qual consome mais espaço.
</details>

> **Cilada comum:** rodar du -sh / direto na raiz do sistema — em disco grande isso demora muito e sobrecarrega I/O; é melhor ir testando pasta por pasta a partir das mais suspeitas.

> **Se der diferente:** "du: cannot read directory ... Permission denied" → você não é root. Use sudo du -sh /var/log . Sem sudo, o número vem menor que a realidade — e é assim que se conclui errado. /var/log aparece pequeno, mesmo com o disco cheio → a culpada é outra pasta. Ache-a com sudo du -h --max-depth=1 / | sort -rh | head — esse é o comando que os seniores usam de verdade. du e df discordam muito → clássico: existe arquivo deletado mas ainda aberto por um processo. O du não vê, o df sim. Confirme com sudo lsof +L1 .
