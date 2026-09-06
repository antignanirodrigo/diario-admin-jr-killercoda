## Ação: Gere tráfego de teste do cliente pro servidor (curl ou similar) enquanto as duas capturas rodam.

```bash
curl http://10.10.10.20:8080
```

**Resultado esperado:** pacotes aparecendo nas duas capturas, confirmando entrega completa.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `curl http://10.10.10.20:8080` — Faz uma requisição HTTP ao servidor de teste, gerando o tráfego que as duas capturas simultâneas (cliente e servidor) devem registrar.
</details>
