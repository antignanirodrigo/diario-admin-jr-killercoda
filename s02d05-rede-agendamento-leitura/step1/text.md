## Ação: Identifique o endereço IP e a interface principal da sua VM.

ip a é a "foto de endereço" do servidor — o primeiro dado que qualquer investigação de rede precisa confirmar antes de qualquer outra coisa.

```bash
ip a
```

**Resultado esperado:** IP, máscara e nome da interface identificados.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip` — Ferramenta moderna de configuração e consulta de rede no Linux (substitui o antigo ifconfig).
- `a` — Abreviação de 'address' — mostra os endereços IP configurados em cada interface de rede da máquina.
</details>

> **Cilada comum:** confundir a interface de loopback (lo, 127.0.0.1) com a interface de rede real — o endereço que importa geralmente é o de uma interface como eth0 ou ens160.
