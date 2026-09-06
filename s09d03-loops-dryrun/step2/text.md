## Ação: reproduza o bug com for f in $(ls), usando só echo (nunca mv direto).

ver o bug acontecer com echo, sem risco nenhum, é o que fixa por que $(ls) é perigoso — a mesma lição cara que a história de hoje contou.

```bash
for f in $(ls *.log); do echo mv "$f" "arquivado_$f"; done
```

**Resultado esperado:** o arquivo "relatorio final.log" aparece quebrado em dois comandos separados — "relatorio" e "final.log" tratados como itens distintos.

> **Cilada comum:** rodar esse teste sem o echo, direto com mv — mesmo em ambiente de teste, é melhor praticar sempre simular primeiro, reflexo que você vai levar pra produção.
