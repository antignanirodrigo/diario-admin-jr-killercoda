## Ação: reconecte à sessão e confirme que o comando de teste continuou rodando o tempo todo.

ver o contador avançado, não reiniciado, é a prova concreta de que a sessão viveu no servidor o tempo todo, independente de você estar conectado ou não.

```bash
tmux attach -t teste
```

**Resultado esperado:** sessão retomada exatamente de onde parou, contador com número bem mais alto do que quando você desanexou.

> **Cilada comum:** se esquecer de encerrar o loop no final (Ctrl+c dentro da sessão) — ele continua consumindo recursos até você matar o processo ou a sessão.
