## Ação: adicione uma regra pequena de teste e valide.

Por quê: validar a mudança antes de testar o rollback confirma que você está revertendo algo que realmente funcionava.

```bash
sudo nft add rule inet filter input tcp dport 8080 accept
nc -zv 127.0.0.1 8080
```

**Resultado esperado:** conexão succeeded na porta recém-liberada.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft add rule ... tcp dport 8080 accept` — Adiciona uma regra pequena e isolada de teste — fácil de identificar e reverter.
- `nc -zv 127.0.0.1 8080` — Confirma que a porta liberada aceita conexão, validando a mudança antes de testar o rollback.
</details>

> **Cilada comum:** adicionar mais de uma regra "já que estou aqui" — mudanças pequenas e isoladas são mais fáceis de validar e reverter.
