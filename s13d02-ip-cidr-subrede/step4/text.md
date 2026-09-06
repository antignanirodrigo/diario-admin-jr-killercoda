## Ação: reconfigure uma VM para uma sub-rede diferente e recalcule.

Por quê: ver o caso "rede diferente" lado a lado com o caso "mesma rede" é o que fixa a diferença — não basta ler a teoria uma vez.

```bash
vm-b$ ip addr add 192.168.20.30/24 dev ens160
```

**Resultado esperado:** 192.168.20.0/24 — rede diferente da primeira VM.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip addr add` — Adiciona um endereço IP a uma interface — revisado no primeiro passo de hoje.
- `192.168.20.30/24` — Novo IP com máscara /24, propositalmente numa sub-rede diferente (192.168.20.0) da usada no primeiro teste.
- `dev ens160` — Interface onde o endereço é aplicado.
</details>

> **Cilada comum:** esquecer de remover o IP antigo antes de adicionar o novo — a VM pode ficar com dois IPs simultâneos e mascarar o teste.
