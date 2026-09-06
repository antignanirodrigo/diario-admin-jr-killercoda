## Ação: Identifique suas próprias sessões recentes de login.

last é a primeira fonte, o "livro de visitas" — dá o quadro geral de quem entrou, mas sozinha ainda é só uma pista.

```bash
last -a
```

**Resultado esperado:** lista de sessões com usuário, tty, origem e horário.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `last` — Lista o histórico de logins no sistema, lido do arquivo wtmp.
- `-a` — Mostra o host/IP de origem de cada sessão na última coluna, em formato mais fácil de ler.
</details>

> **Cilada comum:** parar por aqui achando que a investigação está completa — como quase aconteceu com o Júnior hoje, last sozinho nunca é resposta final em segurança.
