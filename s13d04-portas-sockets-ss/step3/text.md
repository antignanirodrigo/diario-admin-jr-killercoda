## Ação: adicione uma regra de firewall com policy drop, sem accept pra porta do serviço.

Por quê: reproduzir o timeout de propósito é o que prova, na prática, que ele vem do firewall — não é só teoria.

```bash
sudo nft add rule inet filter input tcp dport 8080 drop
nc -zv 192.168.10.X 8080
```

**Resultado esperado:** timeout, em vez de refused ou succeeded.

<details>
<summary>🔍 Detalhar esses comandos</summary>

- `nft add rule` — Adiciona uma nova regra a uma chain existente do nftables — o firewall padrão em distros Linux modernas.
- `inet filter input` — Localização da regra: table inet (cobre IPv4 e IPv6), chain filter , hook input (tráfego destinado à própria máquina).
- `tcp dport 8080` — Condição da regra: só afeta pacotes TCP com porta de destino ( destination port ) 8080.
- `drop` — Ação: descarta o pacote silenciosamente, sem responder nada ao remetente — é isso que produz o sintoma de timeout, diferente de um reject que responderia com recusa explícita.
- `nc -zv ... 8080` — Testa a porta 8080 especificamente (revisado no Dia 3) — aqui usado pra confirmar, na prática, que o drop vira timeout.
</details>

> **Cilada comum:** testar uma regra de drop na porta SSH por engano, numa VM sem console alternativo — isso te tranca fora da própria VM.

> **Se der diferente:** A regra de drop bloqueou a própria sessão SSH usada pra testar, e a sessão travou → clássico de nftables: sempre confirme que a regra de drop está restrita à porta de teste (8080), nunca aplique uma drop genérica de input numa sessão SSH ativa sem antes garantir uma regra explícita liberando a porta 22. "Error: Could not process rule: No such file or directory" → a table/chain inet filter ainda não existe nessa VM. Crie primeiro com sudo nft add table inet filter e sudo nft add chain inet filter input { type filter hook input priority 0 \; } .
