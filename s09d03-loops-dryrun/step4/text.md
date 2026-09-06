## Ação: revise a saída do dry-run, remova o echo, e execute o loop de verdade.

esse é o ciclo completo — simular, revisar, e só então executar — exatamente o que a Questão 2 vai testar como próximo passo correto.

```bash
for f in *.log; do mv "$f" "arquivado_$f"; done
ls arquivado_*
```

**Resultado esperado:** os três arquivos renomeados com o prefixo "arquivado_", incluindo o de nome com espaço, intacto.

> **Cilada comum:** esquecer de remover o echo e achar que "já rodou" — o dry-run nunca move nada de verdade, é preciso o passo extra de rodar sem ele.
