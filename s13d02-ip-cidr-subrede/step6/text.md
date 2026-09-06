## Ação: Remova os IPs temporários adicionados nas duas VMs — ip addr add não é persistente, mas some só no reboot; sem remover, a VM fica com endereços de laboratório penduradas.

como esses endereços não foram gravados em nenhum arquivo de configuração, eles só sumiriam no próximo reboot — remover manualmente fecha o laboratório sem depender de reiniciar a VM.

```bash
ip -br addr
```

**Resultado esperado:** nenhum dos três IPs de teste aparece mais em ip -br addr — cada VM volta a mostrar só o IP original dela.

<details>
<summary>🔍 Detalhar este cenário</summary>

- `ip addr del` — Remove um endereço IP de uma interface — o oposto exato de ip addr add, usado aqui para desfazer os IPs de teste.
- `192.168.10.15/24 dev ens160` — Endereço, máscara e interface exatos precisam bater com o que foi adicionado — o ip addr del exige essa combinação completa para funcionar.
- `ip -br addr` — Confirma, em formato resumido, que nenhum dos três IPs de teste sobrou nas interfaces.
</details>

> **Cilada comum:** tentar remover um endereço que nunca foi adicionado com sucesso (por causa de um erro anterior) — o ip addr del nesse caso retorna erro; confira com ip -br addr antes de assumir que sobrou algo.

> **Se der diferente:** "RTNETLINK answers: Cannot assign requested address" → o endereço já não estava mais lá (talvez removido antes, ou nunca foi de fato adicionado) — confirme com ip -br addr que a limpeza já está completa.
