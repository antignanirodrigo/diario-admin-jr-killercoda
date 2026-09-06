## Ação: sem desligar o firewall, confirme a ausência da regra específica.

Por quê: essa é a segunda pergunta respondida sem tocar na proteção — a evidência completa (serviço OK + porta bloqueada) já isola a causa exata.

```bash
sudo nft list ruleset
```

**Resultado esperado:** policy drop confirmado, nenhuma regra de accept pra essa porta.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft list ruleset` — Lista o ruleset completo sem alterar nada — confirma a policy drop e a ausência de uma regra de accept para a porta, sem precisar desligar o firewall para checar.
</details>

> **Cilada comum:** sentir a tentação de "só desligar rapidinho pra confirmar" — resista; o nft list já responde tudo que você precisa saber.
