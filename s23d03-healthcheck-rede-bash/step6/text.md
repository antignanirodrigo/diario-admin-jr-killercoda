## Ação: Remova o script de teste e a entrada de cron que você criou, deixando a VM como estava antes da aula.

cron esquecido é o tipo de coisa que reaparece meses depois como um mistério — um healthcheck de teste rodando de hora em hora sem ninguém lembrar por quê.

```bash
crontab -l | grep -v healthcheck.sh | crontab -
rm ~/healthcheck.sh
crontab -l | grep healthcheck || echo "cron limpo"
ls ~/healthcheck.sh 2>/dev/null || echo "script removido"
```

**Resultado esperado:** "cron limpo" e "script removido" — nenhum rastro do teste de hoje ficou na VM.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `crontab -l` — Lista as tarefas agendadas do usuário atual, uma por linha.
- `grep -v healthcheck.sh` — Filtra removendo (-v inverte o filtro) qualquer linha que contenha o texto healthcheck.sh — sobra tudo, MENOS a linha de teste.
- `| crontab -` — Envia o resultado já filtrado de volta como a nova lista de cron do usuário — o hífen final diz ao crontab pra ler da entrada padrão (o pipe) em vez de um arquivo.
</details>

> **Cilada comum:** rodar crontab -r (remove TODO o crontab do usuário) em vez de filtrar só a linha do teste — isso apagaria qualquer outra tarefa agendada que já existisse antes da aula.

> **Se der diferente:** "no crontab for usuario" → normal se você nunca teve nenhuma entrada de cron antes desta aula — nesse caso não há nada pra limpar, o comando crontab -l só confirma que já está vazio.
