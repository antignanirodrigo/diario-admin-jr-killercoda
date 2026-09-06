## Ação: inicie um serviço simples numa porta e confirme localmente.

Por quê: confirmar localmente primeiro dá a linha de base — sem isso, você não sabe se um teste remoto que falha é do serviço ou do caminho.

```bash
python3 -m http.server 8080 &
ss -tlnp | grep ':8080'
```

**Resultado esperado:** porta 8080 aparecendo em LISTEN, com o processo associado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `python3 -m http.server 8080 &` — Sobe um servidor HTTP simples na porta 8080, em segundo plano, só para ter um serviço real escutando durante o laboratório.
- `ss -tlnp | grep ':8080'` — Confirma localmente que a porta 8080 está em LISTEN, com o processo associado — a linha de base antes do teste remoto.
</details>

> **Cilada comum:** esquecer de derrubar o servidor de teste no final — ele fica rodando e ocupando a porta pra próxima vez.

> **Se der diferente:** ss -tlnp não mostra o processo (coluna vazia) → sem sudo , o ss não tem permissão de ver o dono de sockets de outros usuários. Rode sudo ss -tlnp | grep ':8080' .
