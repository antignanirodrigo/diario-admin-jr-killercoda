## Ação: Documente partição afetada, causa do espaço preso, ação tomada, espaço liberado antes/depois.

registrar os números antes/depois é a prova concreta de que a ação funcionou — sem isso, "resolvi" é só uma afirmação, não uma validação.

```bash
# não é comando de shell — é o registro final
# ex: "/var em 98%. Causa: teste.log preso por processo tail. Ação: processo encerrado, espaço liberado. df -h antes: 98%, depois: 62%."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "rotacionei os logs" sem os números de espaço antes/depois — sem essa comparação, não dá pra confirmar que o problema real foi resolvido.
