## Ação: investigue localmente no servidor e compare com o resultado do nc.

Por quê: a investigação local confirma a causa exata (serviço parado) em vez de deixar a suspeita solta entre porta/firewall/aplicação.

```bash
ss -tlnp | grep ':80'
systemctl status nginx --no-pager
```

**Resultado esperado:** nenhuma linha de saída em ss, serviço inactive em systemctl.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ss -tlnp` — Lista sockets TCP em listening, com portas numéricas (-n) e o processo dono de cada uma (-p) — precisa de sudo para ver o processo de outros usuários.
- `| grep ':80'` — Filtra a saída só para a porta 80.
- `systemctl status nginx --no-pager` — Mostra o estado do serviço nginx; --no-pager evita que a saída abra num paginador interativo, útil em scripts e logs colados.
</details>

> **Cilada comum:** pular direto pra reiniciar o serviço sem checar os logs antes — você perde a chance de descobrir por que ele caiu.
