## Ação: Escreva um relatório de incidente completo, incluindo critério de escalonamento.

incluir explicitamente o "por que escalei" (ou "por que não escalei") é o que transforma um relatório técnico num documento que outra pessoa consegue auditar depois.

```bash
# não é comando de shell — é o relatório
# ex: "Sintomas: lentidão + login desconhecido. Causa: acesso não autorizado + processo miner. Ação: processo encerrado. Escalado: sim, segurança (credenciais + auditoria)."
```

**Resultado esperado:** relatório com causa, evidência cruzada, ação tomada e critério de escalonamento.

> **Cilada comum:** tratar "encerrei o processo" como o fim da investigação — quando envolve acesso não autorizado, o encerramento do processo é só o primeiro passo, não o último.
