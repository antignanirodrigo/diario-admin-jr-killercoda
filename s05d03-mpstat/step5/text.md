## Ação: Documente sintoma, média enganosa, núcleo real e processo responsável.

registrar explicitamente "estrutural, não temporário" é o que evita que alguém tente "resolver" com um simples restart no futuro.

```bash
# não é comando de shell — é o registro final
# ex: "Sintoma: timeouts, CPU média 40%. Evidência: núcleo 3 em 98% (mpstat), processo app PID 2210 (ps -o psr). Causa: single-thread, estrutural."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "CPU alta" sem especificar que é um núcleo isolado — perde a informação mais importante do diagnóstico.
