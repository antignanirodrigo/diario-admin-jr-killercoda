## Ação: Combine período e prioridade pra cortar ruído, e compare com o comando anterior.

combinar --since e -p é o que transforma um log de centenas de linhas numa lista curta com só o que realmente importa pra investigação de agora.

```bash
journalctl -u ssh --since "1 hour ago" -p err
```

**Resultado esperado:** lista bem menor, só com erros, mais fácil de ler.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `journalctl -u ssh` — Filtra o journal para mostrar só mensagens do serviço ssh.
- `--since "1 hour ago"` — Restringe a janela de tempo: só eventos da última hora, em vez do histórico inteiro do serviço.
- `-p err` — Filtra por prioridade: só mostra mensagens de nível 'error' ou mais grave, cortando o ruído informativo de rotina.
</details>

> **Cilada comum:** usar -p err sem -u (como o colega da história de hoje) — sem o filtro de unidade, os erros de todos os serviços aparecem misturados.
