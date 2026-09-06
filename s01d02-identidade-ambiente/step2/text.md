## Ação: Rode, em sequência, os quatro comandos de identidade desta aula.

cada comando responde só UMA das quatro perguntas — misturar a leitura de um com a conclusão de outro é exatamente o erro que gera mal-entendido, como o "você tá como root?" do início da aula.

```bash
whoami
id
hostnamectl
uname -a
```

**Resultado esperado:** quatro saídas diferentes, cada uma respondendo uma pergunta específica (quem, privilégio, onde, o quê).

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `whoami` — Mostra só o nome (login) do usuário da sessão atual.
- `id` — Mostra UID, GID e a lista completa de grupos do usuário.
- `hostnamectl` — Identifica hostname, sistema operacional, versão do kernel e arquitetura.
- `uname -a` — Mostra informações do kernel (nome, hostname, versão, build, arquitetura) — não mostra a distribuição.
</details>

> **Cilada comum:** rodar só whoami e achar que já é suficiente. Ele mostra o nome da conta, não o privilégio — é a camada mais superficial das quatro.
