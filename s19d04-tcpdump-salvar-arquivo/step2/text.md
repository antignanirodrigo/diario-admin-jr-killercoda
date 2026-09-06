## Ação: Interrompa a captura e reabra o arquivo com tcpdump -r teste.pcap.

```bash
sudo tcpdump -r ~/teste.pcap
```

**Resultado esperado:** as mesmas linhas de tráfego aparecendo, como se fosse ao vivo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `^C` — Interrompe a captura ao vivo iniciada no passo anterior.
- `tcpdump -r ~/teste.pcap` — Lê (replay) um arquivo .pcap já gravado, reproduzindo as linhas de tráfego como se fosse uma captura ao vivo.
</details>
