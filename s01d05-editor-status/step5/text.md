## Ação: Leia os logs específicos de um desses serviços, procurando erro ou aviso.

journalctl -u filtra só aquele serviço, em vez de despejar o log do sistema inteiro — é a mesma lógica de "less/tail -f em vez de cat" do Dia 3, aplicada a logs de serviço.

```bash
journalctl -u ssh -n 20
```

**Resultado esperado:** uma lista de logs, mesmo que nenhum erro real apareça — o objetivo é praticar a leitura.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `journalctl` — Lê os logs centralizados do systemd (o journal).
- `-u ssh` — Filtra para mostrar só as mensagens da unidade (serviço) 'ssh' — sem isso, você vê o log do sistema inteiro misturado.
- `-n 20` — Limita a saída às últimas 20 linhas, em vez de despejar o histórico completo.
</details>

> **Cilada comum:** rodar journalctl sem o -u , e se perder no log gigante do sistema inteiro em vez do serviço específico que interessa.
