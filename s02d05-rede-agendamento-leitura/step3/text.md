## Ação: Liste as tarefas agendadas do seu usuário e entenda o resultado, mesmo que vazio.

ver "vazio" e saber INTERPRETAR o vazio corretamente (é só do meu usuário, não do servidor inteiro) é mais importante que o comando em si.

```bash
crontab -l
```

**Resultado esperado:** lista de tarefas ou mensagem "no crontab for [usuário]" compreendida corretamente.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `crontab` — Gerencia tarefas agendadas (cron jobs) de um usuário.
- `-l` — Lista (list) as tarefas agendadas do usuário atual, sem abrir editor — só para leitura.
</details>

> **Cilada comum:** concluir "não tem nada agendado no servidor" a partir de um crontab -l vazio — root e /etc/cron.d/ podem ter tarefas que esse comando não mostra.

> **Se der diferente:** "no crontab for [usuário]" → resultado normal quando não há tarefa agendada pro SEU usuário — não significa que o servidor inteiro não tem nada agendado. Root e /etc/cron.d/ podem ter tarefas próprias, invisíveis nesse comando.
