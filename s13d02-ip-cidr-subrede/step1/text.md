## Ação: configure IPs na mesma sub-rede em duas VMs de laboratório.

Por quê: começar com um caso "mesma rede" confirmado dá uma base pra comparar com o caso "redes diferentes" mais adiante.

```bash
ip -br addr
```

**Resultado esperado:** ambos os IPs visíveis, com o mesmo prefixo /24.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip addr add` — Adiciona um endereço IP a uma interface de rede — comando de configuração, diferente do ip addr show (só leitura) usado ontem.
- `192.168.10.15/24` — O endereço IP seguido da máscara em notação CIDR — o /24 diz que os primeiros 24 bits identificam a rede, sobrando 8 bits para hosts (256 endereços possíveis, 254 utilizáveis).
- `dev ens160` — Especifica em qual interface de rede o endereço deve ser adicionado.
</details>

> **Cilada comum:** confundir IP configurado temporariamente (via ip addr add ) com IP persistente — sem editar o arquivo de configuração, isso some no reboot.

> **Se der diferente:** "RTNETLINK answers: File exists" → o IP já está atribuído (de uma tentativa anterior). Remova antes com sudo ip addr del 192.168.10.15/24 dev ens160 e adicione de novo. "Cannot find device \"ens160\"" → confirme o nome real da interface com ip -br link antes de rodar o comando — em VMs diferentes pode ser eth0 ou enp0s3 .
