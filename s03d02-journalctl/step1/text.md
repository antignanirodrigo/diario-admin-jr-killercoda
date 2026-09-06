## Ação: Veja os últimos 20 registros de um serviço de teste.

-u é o filtro mais básico e mais importante — sem ele, você lê o journal do sistema inteiro, o que é ruído demais pra qualquer investigação focada.

```bash
journalctl -u ssh -n 20
```

**Resultado esperado:** lista dos últimos 20 eventos daquele serviço específico.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `journalctl` — Lê os logs centralizados do systemd (o journal).
- `-u ssh` — Filtra para mostrar só as mensagens da unidade 'ssh' — sem isso, o log do sistema inteiro aparece misturado.
- `-n 20` — Limita a saída às últimas 20 linhas.
</details>

> **Cilada comum:** esquecer o -u e rolar um log gigante tentando achar o serviço certo manualmente — sempre filtre primeiro, leia depois.
