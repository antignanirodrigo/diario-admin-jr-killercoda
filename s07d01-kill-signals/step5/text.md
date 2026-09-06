## Ação: documente PID, sinal enviado em cada etapa, resultado, tempo de espera entre tentativas.

documentar a escalada (não só o resultado final) é o que prova, pra você e pra qualquer auditoria futura, que o processo foi encerrado com o cuidado correto.

```bash
PID: [x] | kill -15 enviado | esperado 5s | ps -p: não encontrado | kill -9: não necessário
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "processo encerrado", sem registrar qual sinal foi usado primeiro — essa informação é exatamente o que diferencia um encerramento cuidadoso de um kill -9 de reflexo.
