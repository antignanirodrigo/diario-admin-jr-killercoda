## Ação: Rode ip a numa VM de laboratório e identifique o nome da interface principal.

```bash
ip a
```

**Resultado esperado:** nome da interface (ex.: eth0, ens18) confirmado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip` — Ferramenta moderna de configuração e consulta de rede (substitui o antigo ifconfig).
- `a` — Abreviação de 'address' — lista todas as interfaces de rede da máquina e seus endereços IP.
</details>

> **Se der diferente:** Não aparece nenhuma interface chamada eth0, só ens18, enp0s3 ou algo parecido → normal — o nome da interface varia por hypervisor (Proxmox costuma dar ens18, VirtualBox costuma dar enp0s3). Use o nome real que apareceu no ip a no lugar de eth0 em todos os comandos seguintes da aula.
