## Ação: documente comando completo, campo usado como filtro, campo somado, resultado final.

documentar qual campo é qual, além do comando, é o que permite reaplicar a mesma lógica corretamente num log diferente, sem repetir a investigação de formato do zero.

```bash
Comando: awk '$7==200 {soma += $8} END {print soma}' teste.log
Filtro: campo 7 (status) == 200
Somado: campo 8 (bytes)
Resultado: 3072 (validado contra cálculo manual)
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o comando, sem anotar quais campos correspondem a quê — sem isso, reaplicar a mesma lógica noutro log exige investigar tudo de novo.
