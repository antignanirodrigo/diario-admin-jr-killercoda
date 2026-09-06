## Ação: consulte o autoritativo direto e compare com a consulta normal.

Por quê: comparar as duas fontes lado a lado é o diagnóstico correto — ele isola exatamente onde está a resposta desatualizada.

```bash
dig @192.168.10.10 app.intra.example A +short
dig app.intra.example A +short
```

**Resultado esperado:** divergência clara entre as duas respostas.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig @192.168.10.10 ...` — Consulta o servidor autoritativo diretamente, ignorando o cache do resolvedor — mostra a resposta "de fonte".
- `dig app.intra.example A +short` — Consulta normal via resolvedor padrão — mostra a resposta "em cache", possivelmente desatualizada.
- `+short` — Mostra só o IP, sem o cabeçalho completo da resposta.
</details>

> **Cilada comum:** consultar só o resolvedor normal e nunca comparar com o autoritativo — sem essa comparação, você não consegue provar que é cache.
