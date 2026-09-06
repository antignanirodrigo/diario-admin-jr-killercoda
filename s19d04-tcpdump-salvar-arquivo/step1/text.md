## Ação: Rode tcpdump -i eth0 -w teste.pcap enquanto gera algum tráfego (curl, ping).

```bash
sudo tcpdump -i eth0 -w ~/teste.pcap
ping -c 5 8.8.8.8
```

**Resultado esperado:** arquivo teste.pcap criado, com tamanho maior que zero.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo tcpdump -i eth0` — Captura na interface eth0, como nos dias anteriores.
- `-w ~/teste.pcap` — Em vez de traduzir cada pacote pra uma linha de texto e imprimir na tela, grava os pacotes BRUTOS (binário) direto nesse arquivo — nada aparece no terminal enquanto -w está ativo.
</details>

> **Se der diferente:** O arquivo foi criado mas com 0 bytes → confirme que o tráfego gerado (o ping) realmente passou pela interface eth0 e não por outra — testar contra localhost , por exemplo, gera tráfego na interface lo , não em eth0 .
