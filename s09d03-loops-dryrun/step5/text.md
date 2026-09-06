## Ação: documente comando de dry-run, revisão feita, comando real, resultado validado.

esse registro documenta exatamente a sequência de segurança que evita repetir o erro da história — é o histórico que vira referência da próxima vez.

```bash
Dry-run: for f in *.log; do echo mv "$f" "arquivado_$f"; done
Revisão: 3 linhas conferidas, nome com espaço tratado corretamente
Execução real: mesmo loop sem echo
Validado: ls arquivado_* confirma os 3 arquivos renomeados
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o resultado final, sem registrar que o dry-run foi feito e revisado — sem esse detalhe, não há prova de que o processo seguro foi seguido.
