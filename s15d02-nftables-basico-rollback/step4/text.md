## Ação: reaplique a mudança de teste e confirme de novo.

Por quê: reaplicar depois de provar o rollback é o que fecha o ciclo — mudança, teste, rollback provado, mudança de novo com confiança.

```bash
sudo nft add rule inet filter input tcp dport 8080 accept
nc -zv 127.0.0.1 8080
```

**Resultado esperado:** regra de volta, porta acessível novamente.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft add rule ... tcp dport 8080 accept` — Adiciona uma regra pequena e isolada de teste — fácil de identificar e reverter.
- `nc -zv 127.0.0.1 8080` — Confirma que a porta liberada aceita conexão, validando a mudança antes de testar o rollback.
</details>

> **Cilada comum:** deixar a regra de teste em produção depois do laboratório — sempre limpe o que foi adicionado só pra teste.
