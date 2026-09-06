## Ação: Rode de novo com host <ip de outra VM> e gere tráfego só com ela.

```bash
sudo tcpdump -i eth0 -n host 10.10.10.50
```

**Resultado esperado:** só pacotes envolvendo esse IP específico aparecem.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `-n` — Mostra IPs e portas em formato numérico, sem resolver nomes.
- `host 10.10.10.50` — Filtro que mostra só pacotes onde esse IP aparece como origem OU destino — reduz o volume de tráfego irrelevante mostrado na tela.
</details>

> **Se der diferente:** Nenhum pacote aparece mesmo gerando tráfego com essa VM → confirme que 10.10.10.50 é realmente o IP da outra VM — rode ip a nela pra ter certeza. Um IP errado no filtro simplesmente não bate com nada, sem nenhum erro na tela.
