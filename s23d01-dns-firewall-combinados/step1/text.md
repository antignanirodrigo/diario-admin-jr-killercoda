## Ação: Confirme o estado saudável de DNS e conectividade ANTES de simular qualquer bloqueio — essa é a sua baseline pra provar depois exatamente o que mudou.

sem essa baseline, você não teria como provar depois que o bloqueio (e não outra coisa) foi a causa real da falha simulada no próximo passo.

```bash
dig +short db-externo.empresa.com
nc -zv 10.50.0.20 5432
```

**Resultado esperado:** o IP retornado pelo dig e "succeeded" no nc — os dois testes passam antes de você simular qualquer bloqueio de firewall.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig` — Ferramenta de consulta DNS — pergunta a um servidor de nomes qual IP corresponde a um nome, sem tentar se conectar em porta nenhuma depois.
- `+short` — Formato de saída resumido: retorna só o IP encontrado, sem o restante do cabeçalho técnico da resposta DNS — ótimo pra usar dentro de scripts.
- `db-externo.empresa.com` — O nome que está sendo resolvido — o alvo da pergunta feita ao servidor DNS.
</details>

> **Cilada comum:** só em VM/ambiente de laboratório — nunca rode nft em produção sem confirmar a regra exata antes. Anote o IP e a porta usados aqui, você vai reutilizá-los nos próximos passos.

> **Se der diferente:** "nc: command not found" → instale com sudo apt install netcat-openbsd (Debian/Ubuntu) ou use telnet 10.50.0.20 5432 como alternativa pro mesmo teste. dig retorna vazio, sem IP nenhum → confirme que o nome existe no seu ambiente de teste — mapeie um nome fictício a um IP de teste em /etc/hosts se você não tiver um servidor DNS real configurado na VM.
