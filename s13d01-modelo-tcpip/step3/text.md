## Ação: confirme a camada de rede na mesma interface.

Por quê: sem IP configurado, roteamento e portas não têm como funcionar, mesmo com enlace saudável.

```bash
ip -br addr show ens160
```

**Resultado esperado:** endereço IP e prefixo (ex: 192.168.10.25/24) visíveis.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip addr show` — Mostra os endereços IP configurados nas interfaces de rede — a camada de rede (camada 3) do modelo TCP/IP.
- `-br` — Modo brief : uma linha por interface, resumida, em vez da saída longa padrão — mais fácil de ler rapidamente num diagnóstico.
- `ens160` — Nome da interface a consultar. Sem esse argumento, o comando lista todas as interfaces da máquina.
</details>

> **Cilada comum:** assumir que um IP presente está necessariamente correto — confira também a máscara/prefixo, não só a existência do endereço.

> **Se der diferente:** "Device \"ens160\" does not exist" → o nome da interface varia por distro e hypervisor. Rode ip -br link primeiro pra descobrir o nome real (comum: eth0 , enp0s3 , ens18 ) e substitua no comando.
