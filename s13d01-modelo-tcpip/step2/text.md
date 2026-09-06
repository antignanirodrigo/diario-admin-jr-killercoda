## Ação: confirme a camada de enlace na VM de laboratório.

Por quê: se a interface não estiver UP, nenhuma camada acima dela pode funcionar — é sempre o primeiro ponto a confirmar.

```bash
ip -br link
```

**Resultado esperado:** interface listada como UP, com endereço MAC visível.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip link` — Mostra as interfaces de rede da máquina e seu estado administrativo (UP/DOWN) — a camada de enlace do modelo TCP/IP.
- `-br` — Modo brief: uma linha resumida por interface, com estado e MAC, em vez da saída longa padrão.
</details>

> **Cilada comum:** confundir interface "UP" (administrativamente ligada) com "conectada" — cabo desconectado ainda pode mostrar UP dependendo do driver.

> **Se der diferente:** A interface aparece como DOWN → em VM, isso costuma ser a interface errada. Rode ip -br link sem filtro e confirme qual delas tem endereço MAC — normalmente ens160 , eth0 ou enp0s3 , dependendo do hypervisor. Nenhuma interface aparece além de lo → a VM pode não ter uma NIC configurada no hypervisor — confirme nas configurações da VM antes de suspeitar do Linux.
