## Ação: só depois de validado, mova o conteúdo do local de teste pro lugar original.

esse último passo só acontece DEPOIS da validação — é a ordem que transforma "restaurei algo" em "restaurei com confiança".

```bash
rsync -av ~/lab/restore_test/ ~/lab/origem/
```

**Resultado esperado:** pasta original restaurada com sucesso, validada antes de mover — nunca o inverso.

> **Cilada comum:** inverter a ordem por pressa — mover pra produção antes de terminar a validação anula todo o cuidado dos passos anteriores.
