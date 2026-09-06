## Ação: Documente janela de tempo, métrica investigada, valor do pico e causa correlacionada.

registrar a correlação explicitamente (não só o pico isolado) é o que transforma um número no sar numa explicação real e defensável do que aconteceu.

```bash
# não é comando de shell — é o registro final
# ex: "Janela: 15:03-15:11. Métrica: CPU 88-92%. Correlação: job cron relatorio.sh no mesmo horário. Causa provável: job intensivo, não incidente."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "CPU alta às 15h" sem a correlação com o cron — sem essa conexão, o relatório não explica NADA, só descreve um sintoma.
