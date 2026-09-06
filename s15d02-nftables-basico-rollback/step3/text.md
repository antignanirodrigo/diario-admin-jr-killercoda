## Ação: rode o rollback de verdade e confirme que a regra sumiu.

Por quê: esse é o passo que transforma "eu acho que tenho rollback" em "eu provei que tenho rollback".

```bash
sudo nft -f /root/nftables_backup_$(date +%F).nft
sudo nft list chain inet filter input
```

**Resultado esperado:** chain volta ao estado original, sem a regra de teste.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft -f arquivo` — Carrega ( flush and load ) um arquivo de regras nftables inteiro, substituindo o ruleset atual pelo conteúdo do arquivo — é isso que faz o rollback funcionar: você recarrega o estado salvo antes da mudança.
- `nft list chain inet filter input` — Lista as regras da chain input depois do rollback, pra confirmar visualmente que a regra de teste sumiu.
</details>

> **Cilada comum:** salvar o backup DEPOIS de já ter feito a mudança — nesse caso o "backup" já contém a regra nova, e o rollback não reverte nada.
