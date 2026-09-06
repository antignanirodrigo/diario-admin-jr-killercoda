## Ação: inicie um serviço simples numa porta e confirme que está escutando.

Por quê: confirmar essa primeira pergunta (serviço escutando) antes de suspeitar do firewall evita investigar na ordem errada.

```bash
python3 -m http.server 8080 &
ss -tlnp | grep 8080
```

**Resultado esperado:** porta aparecendo em LISTEN, com o processo associado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `python3 -m http.server 8080` — Sobe um servidor HTTP simples na porta 8080, só pra ter um serviço real escutando durante o laboratório.
- `ss -tlnp | grep 8080` — Confirma a PRIMEIRA pergunta do diagnóstico (revisada da Semana 13): o serviço está mesmo escutando nessa porta, localmente, antes de suspeitar do firewall.
</details>

> **Cilada comum:** pular direto pro firewall sem confirmar o serviço primeiro — a ordem das duas perguntas importa pra não perder tempo.
