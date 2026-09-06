## Ação: Gere uma carga de teste e confirme que o pico ficou registrado no histórico.

ver o próprio pico de teste aparecer no histórico é a prova concreta de que a coleta está funcionando — não é fé, é verificação.

```bash
yes > /dev/null &
kill %1
sar -u
```

**Resultado esperado:** pico de CPU visível no sar, correspondente ao horário exato do teste.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `yes > /dev/null &` — Gera carga de CPU de propósito (yes imprime 'y' infinitamente) e descarta a saída, rodando em segundo plano.
- `kill %1` — Encerra o processo de carga pelo número do job em segundo plano.
- `sar -u` — Consulta o histórico de CPU de novo, para confirmar que o pico de carga ficou registrado.
</details>

> **Cilada comum:** esquecer de encerrar o processo yes com kill — ele fica consumindo CPU indefinidamente se você não parar.
