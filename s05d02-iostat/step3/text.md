## Ação: Identifique o processo responsável pela carga com pidstat.

pidstat -d é o que transforma "o disco está saturado" em "ESTE processo específico está saturando o disco" — a diferença entre sintoma e causa acionável.

```bash
pidstat -d 2
```

**Resultado esperado:** o processo dd aparecendo claramente como o maior consumidor de I/O.

> **Cilada comum:** parar em %util alto sem rodar pidstat — sem identificar o processo, você não tem quem investigar ou quem pedir aprovação pra agir.
