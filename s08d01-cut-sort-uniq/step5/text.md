## Ação: documente comando completo usado, arquivo analisado, resultado do top.

documentar o comando completo é o que permite reaplicar exatamente a mesma cadeia num arquivo de produção real, sem precisar reconstruir tudo do zero.

```bash
Comando: cut -d' ' -f1 teste.log | sort | uniq -c | sort -rn | head -3
Arquivo: teste.log (5 linhas)
Resultado: 3 10.0.0.1 (confirmado, bate com esperado)
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o resultado final, sem o comando completo — sem ele, ninguém (nem você) consegue reproduzir a análise depois.
