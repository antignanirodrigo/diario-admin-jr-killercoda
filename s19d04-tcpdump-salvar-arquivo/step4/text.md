## Ação: Tente abrir o mesmo arquivo com cat teste.pcap e observe o conteúdo ilegível.

```bash
cat ~/teste.pcap
```

**Resultado esperado:** caracteres binários sem sentido no terminal, confirmando que não é texto simples.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `cat` — Concatena e imprime o conteúdo de um arquivo diretamente no terminal.
- `~/teste.pcap` — Arquivo binário (não texto) gravado pelo tcpdump — cat não sabe interpretar esse formato, por isso mostra caracteres ilegíveis em vez do tráfego decodificado.
</details>

> **Se der diferente:** O terminal trava, mostra caracteres estranhos ou emite bips → normal — são bytes binários sendo interpretados como caracteres de controle pelo terminal. Pressione Ctrl+C pra recuperar o terminal e use tcpdump -r ou file ~/teste.pcap em vez de cat pra inspecionar o arquivo com segurança.
