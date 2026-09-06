## Ação: Confirme que nenhum dos quatro comandos exigiu senha ou alterou qualquer coisa no sistema.

essa reexecução prova que investigar identidade não exige privilégio nenhum — é o tipo de checagem que você pode (e deve) fazer antes de qualquer decisão maior.

```bash
whoami
id
hostnamectl
uname -a
```

**Resultado esperado:** todos são comandos de leitura pura — se algum pediu senha de root, algo foi digitado errado.

<details>
<summary>🔍 Detalhar cada comando desse bloco (reexecução)</summary>

- `whoami` — Mostra só o nome (login) do usuário da sessão atual.
- `id` — Mostra UID, GID e a lista completa de grupos do usuário.
- `hostnamectl` — Identifica hostname, sistema operacional, versão do kernel e arquitetura.
- `uname -a` — Mostra informações do kernel (nome, hostname, versão, build, arquitetura) — não mostra a distribuição.
</details>

> **Cilada comum:** digitar sudo na frente "por hábito" de outros comandos. Nenhum dos quatro aqui precisa — se pediu senha, revise o que foi digitado.
