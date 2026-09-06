## Ação: Remova a regra de bloqueio que você criou e prove que os dois testes voltam a passar exatamente como na baseline do início.

fecha o ciclo criar cenário → diagnosticar → desfazer: a regra de firewall de teste não fica esquecida na sua VM confundindo o próximo laboratório.

```bash
sudo nft -a list ruleset | grep 5432
sudo nft delete rule inet filter output handle SEU_HANDLE_ANOTADO
nc -zv 10.50.0.20 5432
```

**Resultado esperado:** nc volta a confirmar sucesso na mesma porta que você bloqueou — igual à baseline medida no primeiro passo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft delete rule` — Remove uma regra específica do firewall nftables, identificada pelo seu handle (número único de identificação).
- `inet filter output` — Localiza a regra: família de endereço inet (IPv4+IPv6), na tabela filter, chain output (tráfego saindo desta máquina).
- `handle` — Número de identificação único de cada regra — nft não permite remover uma regra só pelo texto dela, é preciso o handle exato, visto com nft -a list ruleset .
</details>

> **Cilada comum:** esquecer o handle da regra ou a chain certa. Rode sudo nft -a list ruleset antes de tentar apagar — o -a mostra os handles, que é o que o delete exige.

> **Se der diferente:** "Error: Could not process rule: No such file or directory" → o handle informado não existe mais ou está errado. Rode sudo nft -a list ruleset de novo e copie o número exato do handle atual antes de tentar apagar.
