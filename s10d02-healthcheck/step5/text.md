## Ação: documente cenários testados (falha em cada posição, tudo OK), exit codes obtidos em cada um.

esse registro com múltiplos cenários é a prova de que o healthcheck é confiável em qualquer situação, não só no caso que aconteceu de ser testado.

```bash
Falha no check1 (primeiro): exit 2, capturado
Falha no check2 (meio): exit 2, capturado
Todos OK: exit 0, correto
Contador de falhas confirmado independente de ordem
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só um cenário — sem os múltiplos casos testados, fica impossível provar depois que a correção realmente cobre qualquer ordem de falha.
