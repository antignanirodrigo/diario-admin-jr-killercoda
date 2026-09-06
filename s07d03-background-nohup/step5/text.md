## Ação: documente comando usado, teste de desconexão realizado, resultado confirmado.

esse registro é o que prova, da próxima vez, que a proteção nohup+disown foi de fato testada — não só assumida.

```bash
Comando: nohup ./teste.sh > teste.log 2>&1 & + disown -h
Teste de desconexão: sessão fechada e reaberta, processo sobreviveu
Progresso confirmado via: tail -f teste.log
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "usei nohup", sem registrar que o teste de desconexão real foi feito — sem esse detalhe, a documentação não prova nada de verdade.
