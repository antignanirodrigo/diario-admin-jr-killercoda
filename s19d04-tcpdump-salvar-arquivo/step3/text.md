## Ação: Reaplique um filtro host ou port sobre o arquivo já salvo, com tcpdump -r teste.pcap host <ip>.

```bash
sudo tcpdump -r ~/teste.pcap host 8.8.8.8
```

**Resultado esperado:** só as linhas relevantes ao filtro aparecem, mesmo lendo de um arquivo já pronto.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `-r ~/teste.pcap` — Lê um arquivo .pcap já existente e reproduz os pacotes gravados nele, em vez de capturar ao vivo de uma interface.
- `host 8.8.8.8` — Filtros normais (host, port, and/or) funcionam exatamente igual sobre um arquivo já salvo — você pode reaplicar quantos filtros diferentes quiser sobre a MESMA captura, sem precisar capturar de novo.
</details>
