## Ação: complete a cadeia com sort -rn e head, obtendo o ranking final.

ver o resultado final bater com o que você já esperava (porque montou o arquivo de teste você mesmo) é a validação mais forte possível antes de rodar a mesma cadeia num arquivo real de um milhão de linhas.

```bash
cut -d' ' -f1 teste.log | sort | uniq -c | sort -rn | head -3
```

**Resultado esperado:** "3 10.0.0.1" no topo, confirmando exatamente o resultado esperado desde o início.

> **Cilada comum:** confiar no resultado só porque "parece razoável" num arquivo grande — sem ter testado antes num arquivo pequeno e conhecido, você não tem como confirmar que o pipeline está certo.
