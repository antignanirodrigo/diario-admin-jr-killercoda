## Ação: salve o ruleset atual num arquivo de backup com data no nome.

Por quê: o backup precisa vir sempre antes da mudança — depois é tarde demais pra capturar o estado original.

```bash
sudo nft list ruleset > /root/nftables_backup_$(date +%F).nft
```

**Resultado esperado:** arquivo criado com o conteúdo completo do ruleset atual.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft list ruleset` — Lista TODAS as tables, chains e regras configuradas no momento — o estado completo do firewall.
- `> /root/nftables_backup_$(date +%F).nft` — Redireciona essa saída para um arquivo, cujo nome inclui a data atual via $(date +%F) — cria um backup identificável e versionado por dia.
</details>

> **Cilada comum:** não confirmar que o arquivo foi realmente criado (cat no arquivo) antes de seguir em frente.

> **Se der diferente:** "Permission denied" ao gravar em /root/ → sem sudo completo na redireção, o shell tenta escrever em /root/ com seu próprio usuário. Use um caminho que você tenha permissão, como ~/nftables_backup_$(date +%F).nft , ou rode o comando inteiro com sudo sh -c '...' .
