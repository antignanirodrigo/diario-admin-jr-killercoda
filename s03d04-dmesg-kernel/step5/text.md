## Ação: Documente um relatório de incidente completo.

registrar a causa na camada CERTA evita que alguém, meses depois, tente "corrigir um bug" no código do app que nunca existiu.

```bash
# não é comando de shell — é o relatório final
# ex: "Causa raiz: OOM killer matou app-worker (PID 4821) às 10:42:03 por falta de memória. Impacto: app.log parou sem erro. Ação: investigar consumo de memória do app-worker."
```

**Resultado esperado:** relatório completo, com causa raiz identificada no kernel, não na aplicação.

> **Cilada comum:** escrever no relatório "aplicação travou" quando na verdade foi morta pelo kernel — a diferença muda completamente pra onde vai o esforço de correção.
