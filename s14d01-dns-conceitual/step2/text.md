## Ação: configure um servidor DNS local simples com uma zona de teste, se disponível.

Por quê: montar sua própria zona de teste é o que transforma o conceito de "servidor autoritativo" em algo concreto que você controla.

```bash
address=/app.empresa.local/192.168.10.50
```

**Resultado esperado:** zona respondendo a consultas locais.

<details>
<summary>🔍 Detalhar esta linha de configuração</summary>

- `address=/domínio/IP` — Sintaxe do dnsmasq para mapear um nome diretamente a um endereço IP — funciona como uma zona DNS mínima, sem precisar de um servidor autoritativo completo.
- `/app.empresa.local/` — O nome que a zona de teste vai resolver — as barras delimitam o domínio na sintaxe do dnsmasq.
- `192.168.10.50` — O IP que será retornado para esse nome.
</details>

> **Cilada comum:** esquecer de reiniciar o serviço dnsmasq depois de editar a config — a mudança não entra em vigor sozinha.
