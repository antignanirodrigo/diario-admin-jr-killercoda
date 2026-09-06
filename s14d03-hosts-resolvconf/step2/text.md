## Ação: compare getent hosts com dig para o mesmo nome.

Por quê: essa comparação prova, na prática, que dig e getent hosts não consultam a mesma coisa — dig ignora /etc/hosts, getent segue a cadeia completa.

```bash
getent hosts app.intra.example
dig app.intra.example A +short
```

**Resultado esperado:** getent mostra o IP de /etc/hosts; dig mostra o IP real do DNS — divergentes.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `getent hosts` — Consulta o mecanismo de resolução de nomes COMPLETO do sistema — segue a ordem configurada em /etc/nsswitch.conf , incluindo /etc/hosts antes do DNS.
- `dig ... +short` — Consulta o DNS DIRETO, ignorando /etc/hosts por completo — é uma ferramenta de diagnóstico de DNS, não do sistema de resolução geral.
</details>

> **Cilada comum:** usar só dig pra diagnosticar um problema de resolução — ele nunca vai revelar um override em /etc/hosts, porque não consulta esse arquivo.
