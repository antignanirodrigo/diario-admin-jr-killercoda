## Ação: Numa VM de laboratório, rode tcpdump -i eth0 sem filtro por alguns segundos e observe o volume de linhas.

```bash
sudo tcpdump -i eth0 -n
```

**Resultado esperado:** várias linhas de tráfego não relacionado ao que te interessa.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Necessário porque capturar pacotes brutos numa interface exige privilégio elevado.
- `tcpdump -i eth0` — Captura o tráfego passando pela interface eth0.
- `-n` — Não resolve nomes de host (DNS reverso) nem de porta (/etc/services) — mostra os números crus, mais rápido e sem gerar tráfego DNS extra.
</details>
