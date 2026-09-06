## Ação: Documente sintoma, evidência, processo identificado e ação tomada.

registrar %util e await exatos (não "estava lento") é o que dá ao relatório valor de comparação em investigações futuras no mesmo servidor.

```bash
# não é comando de shell — é o registro final
# ex: "Sintoma: lenta, espaço ok (df). Evidência: vda %util 99,2%, await 138,5ms. Processo: dd (teste). Ação: encerrado, retornou ao normal."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar "problema de disco" sem separar claramente espaço de velocidade — essa confusão é exatamente o que a aula de hoje existe pra evitar.
