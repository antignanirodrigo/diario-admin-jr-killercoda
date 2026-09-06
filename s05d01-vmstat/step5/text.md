## Ação: Documente sintoma, ferramenta usada, evidência e validação pós-correção.

registrar os valores numéricos exatos (não só "estava alto") é o que torna esse relatório útil pra comparação em investigações futuras.

```bash
# não é comando de shell — é o registro final
# ex: "Sintoma: lento, CPU normal. Ferramenta: vmstat. Evidência: so subiu 128→512, wa 6%→25%. Causa: pressão de memória. Validado: retornou ao normal após teste."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar "problema de memória" sem os números — sem essa evidência quantitativa, o relatório vira opinião, não diagnóstico.
