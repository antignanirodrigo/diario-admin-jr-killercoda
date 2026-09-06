## Ação: documente script antes/depois da correção, casos testados, comportamento validado.

documentar o antes/depois é o que prova que a correção realmente resolveu o problema original, não só "parece melhor".

```bash
Antes: if [ $DIR = "/var/log/app" ] -> quebrava com DIR vazio
Depois: guarda -z + aspas duplas -> falha clara com exit 1
Testado: DIR válida (funciona), DIR vazia (erro claro), = vs -eq (diferença confirmada)
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o script final, sem registrar os casos de teste — sem isso, fica impossível confirmar depois que a correção cobre exatamente os cenários que quebravam antes.
