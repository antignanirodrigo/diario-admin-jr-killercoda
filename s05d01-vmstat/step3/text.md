## Ação: Compare free baixo (cache normal) com so alto (pressão real).

ver os dois números lado a lado é o que deixa concreta a diferença entre "parece preocupante" (free baixo) e "é preocupante de verdade" (so subindo).

```bash
free -h
vmstat 2 3
```

**Resultado esperado:** distinção clara entre cache saudável e swap real.

> **Cilada comum:** concluir pressão de memória só pelo free baixo, como quase aconteceu na história de hoje — sempre confirme com so antes de reportar.
