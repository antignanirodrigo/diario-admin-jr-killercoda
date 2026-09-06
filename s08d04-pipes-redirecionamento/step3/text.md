## Ação: repita o teste agora usando tee -a, confirmando que o conteúdo se acumula.

ver o -a preservar as duas execuções, lado a lado com o teste anterior que perdeu a primeira, é a comparação mais clara possível do porquê dessa flag importar.

```bash
echo "primeira investigação" | tee -a investigacao2.log
echo "segunda investigação" | tee -a investigacao2.log
cat investigacao2.log
```

**Resultado esperado:** arquivo com as duas linhas, "primeira" e "segunda", acumuladas — nada perdido dessa vez.

> **Cilada comum:** confundir -a do tee com -a de outros comandos (como ls -a) — aqui -a significa append, "acrescentar ao final".
