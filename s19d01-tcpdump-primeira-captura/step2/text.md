## Ação: Rode tcpdump -i <interface> sem sudo e observe o erro de permissão.

```bash
tcpdump -i eth0
```

**Resultado esperado:** mensagem de permissão negada.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `tcpdump` — Captura e imprime pacotes de rede passando por uma interface, em tempo real.
- `-i eth0` — Escolhe a interface eth0 para capturar — sem essa flag, o tcpdump usa um comportamento padrão que pode não ser a interface certa.
</details>
