## Ação: rode ping entre as duas VMs pra confirmar na prática.

Por quê: o ping é a segunda evidência — cálculo teórico batendo com teste prático é o que fecha a confirmação, não um ou outro isolado.

```bash
vm-a$ ping -c 4 192.168.10.40
```

**Resultado esperado:** 0% de perda de pacotes.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ping` — Envia pacotes ICMP Echo Request ao destino e espera a resposta (Echo Reply) — testa alcançabilidade na camada de rede.
- `-c 4` — Limita o teste a 4 pacotes e depois para sozinho — sem essa flag, o ping do Linux roda indefinidamente até ser interrompido com Ctrl+C.
- `192.168.10.40` — IP de destino — a VM B, configurada na mesma sub-rede /24 que a VM A.
</details>

> **Cilada comum:** um firewall bloqueando ICMP pode dar falso negativo — se o ping falhar mas o cálculo bateu, verifique regras de firewall antes de assumir que a rede está errada.

> **Se der diferente:** 100% de perda de pacotes mesmo com o cálculo batendo em mesma rede → confirme que o firewall de uma das VMs não está bloqueando ICMP com sudo nft list ruleset | grep icmp — ping falho não invalida o cálculo de sub-rede, só mascara o teste.
