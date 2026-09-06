## Ação: Confira o status de 3 serviços diferentes da sua VM.

saber ler rapidamente se um serviço está saudável é o primeiro passo de qualquer chamado — antes de journalctl, antes de qualquer diagnóstico mais fundo.

```bash
systemctl status ssh
systemctl status cron
systemctl status <outro serviço instalado>
```

**Resultado esperado:** três saídas diferentes, cada uma mostrando active/inactive/failed e o tempo de execução.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl status` — Mostra o estado atual de um serviço: active/inactive/failed, PID, tempo rodando e últimas linhas de log.
- `ssh` — Nome da unidade do servidor SSH.
- `cron` — Nome da unidade do agendador de tarefas cron.
- `<outro serviço instalado>` — Placeholder — substitua pelo nome de qualquer outro serviço presente na sua VM.
</details>

> **Cilada comum:** ver "active" e parar por aí, sem checar há QUANTO TEMPO está ativo — um serviço que reiniciou sozinho há 30 segundos está "active", mas isso já é uma pista de problema.
