## Ação: Se o auditd estiver disponível, veja eventos detalhados do dia.

auditd é a câmera de segurança — mostra AÇÕES, não só login. É essa terceira fonte que revela o que aconteceu depois que alguém entrou.

```bash
sudo ausearch -ts today
```

**Resultado esperado:** lista de eventos detalhados do dia atual, incluindo comandos executados.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Ler os logs do auditd normalmente exige privilégio elevado.
- `ausearch` — Consulta os registros do auditd — o subsistema que audita AÇÕES (comandos, acessos a arquivo), não só logins.
- `-ts today` — Filtra por timestamp: só eventos de hoje (today), em vez do histórico completo de auditoria.
</details>

> **Cilada comum:** não configurar chaves de auditoria (-k) específicas com antecedência — sem elas, filtrar eventos relevantes fica muito mais trabalhoso na hora da investigação real.

> **Se der diferente:** "ausearch: command not found" ou "No such file or directory" → o auditd não está instalado ou não está rodando. Instale com sudo apt install auditd e ative com sudo systemctl enable --now auditd — depois espere alguns minutos para eventos novos se acumularem antes de repetir o comando.
