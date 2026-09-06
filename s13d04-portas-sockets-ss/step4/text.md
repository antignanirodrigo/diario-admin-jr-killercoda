## Ação: adicione a regra específica de accept e confirme que o teste remoto volta a funcionar.

Por quê: a regra específica corrige só a causa identificada — nunca precisou desligar o firewall inteiro em nenhum momento do laboratório.

```bash
sudo nft add rule inet filter input tcp dport 8080 accept
nc -zv 192.168.10.X 8080
```

**Resultado esperado:** nc succeeded após a regra correta ser adicionada.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft add rule inet filter input` — Adiciona uma regra à chain input da table inet filter.
- `tcp dport 8080 accept` — Libera especificamente o tráfego TCP com porta de destino 8080 — a regra que faltava para a porta responder de fora.
- `nc -zv ... 8080` — Reteste da mesma porta, agora esperando succeeded após a regra ser adicionada.
</details>

> **Cilada comum:** adicionar a regra accept sem remover a regra drop anterior — dependendo da ordem, a primeira regra que casar decide, então a posição importa.
