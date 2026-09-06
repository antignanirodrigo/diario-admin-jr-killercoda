## Ação: adicione a regra específica e teste de novo.

Por quê: a correção específica resolve exatamente a causa identificada, sem ter exposto nenhuma outra porta durante o diagnóstico.

```bash
sudo nft add rule inet filter input tcp dport 8080 accept
nc -zv 127.0.0.1 8080
```

**Resultado esperado:** succeeded, confirmando a correção precisa.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft add rule ... tcp dport 8080 accept` — Adiciona a regra específica que faltava — a correção exata para a causa identificada, sem abrir mais portas do que o necessário.
- `nc -zv 127.0.0.1 8080` — Reteste da porta, confirmando succeeded após a regra correta ser aplicada.
</details>

> **Cilada comum:** adicionar uma regra ampla demais (ex: liberar todas as portas) "pra garantir" — sempre a regra mais específica possível.
