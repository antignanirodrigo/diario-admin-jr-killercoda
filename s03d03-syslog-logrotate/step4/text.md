## Ação: Simule a rotação de log sem aplicar nada ainda.

-d é a etapa de segurança que confirma o que vai acontecer antes de aplicar de verdade — pular direto pra -f é como pular o pwd antes de um rm.

```bash
sudo logrotate -d /etc/logrotate.conf
```

**Resultado esperado:** saída detalhada mostrando quais arquivos seriam rotacionados e como.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — logrotate manipula arquivos de log do sistema, geralmente de root.
- `logrotate` — Ferramenta que rotaciona (arquiva, comprime e limpa) logs conforme regras configuradas.
- `-d` — Modo 'debug/dry-run': mostra o que SERIA feito, sem executar de verdade — a etapa de segurança antes de aplicar com -f.
- `/etc/logrotate.conf` — O arquivo de configuração principal a ser avaliado.
</details>

> **Cilada comum:** confundir a saída do -d com a rotação já aplicada — como o colega da história de hoje, é só simulação, nada mudou no disco ainda.

> **Se der diferente:** "error: skipping "/var/log/algumacoisa.log" because parent directory has insecure permissions" → isso é o logrotate recusando operar em diretório com permissão insegura — leia qual diretório é e ajuste, não ignore o aviso mesmo em modo -d (debug).
