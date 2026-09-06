## Ação: instale (ou simule) um serviço web simples e confirme a camada de aplicação.

Por quê: essa é a última camada — só faz sentido testá-la depois das três anteriores confirmadas, senão você não sabe se o erro é dela ou de baixo.

```bash
ss -tln | grep :80
```

**Resultado esperado:** porta 80 (ou a porta do serviço) aparecendo em LISTEN.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ss -tln` — Lista sockets TCP (-t) em modo listening (-l), com portas numéricas (-n) — revisado mais adiante nesta mesma aula.
- `| grep :80` — Filtra a saída de ss, mostrando só a linha da porta 80 — isola o serviço que interessa no meio de uma lista maior.
</details>

> **Cilada comum:** reiniciar o serviço sem antes confirmar se ele nunca subiu, ou se subiu e caiu — os logs ( journalctl -u nginx ) dizem qual dos dois é.
