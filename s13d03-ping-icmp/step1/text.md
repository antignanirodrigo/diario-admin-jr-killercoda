## Ação: confirme a camada de rede com ping.

Por quê: confirma só que o host responde — ainda não diz nada sobre porta ou aplicação.

```bash
ping -c 3 127.0.0.1
```

**Resultado esperado:** 3 pacotes transmitidos, 3 recebidos, 0% de perda.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ping -c 3` — Envia 3 pacotes ICMP Echo Request e para — confirma só que o host responde na camada de rede.
- `127.0.0.1` — Endereço de loopback — a própria máquina; usado aqui como baseline antes de testar a porta e a aplicação.
</details>

> **Cilada comum:** tratar ping bem-sucedido como "rede está tudo ok" e fechar o chamado aqui.
