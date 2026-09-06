## Ação: inicie um segundo processo de teste, dessa vez já com prioridade baixa desde o início.

essa é a diferença prática entre nice (define desde o nascimento) e renice (ajusta um processo já vivo) — os dois resolvem o mesmo problema em momentos diferentes.

```bash
nice -n 19 yes > /dev/null &
ps -o pid,ni,pcpu,comm -p $!
```

**Resultado esperado:** segundo processo já nascendo com NI=19, sem precisar de um renice depois.

> **Cilada comum:** confundir os dois comandos — nice só funciona ao iniciar um processo novo, renice é o único que ajusta um já em execução.
