## Ação: adicione sort e depois uniq -c, um de cada vez, verificando a saída em cada passo.

ver o sort funcionar antes do uniq -c é o que prova, na prática, por que a ordem entre eles importa — é exatamente o erro que a Questão 3 vai testar.

```bash
cut -d' ' -f1 teste.log | sort
cut -d' ' -f1 teste.log | sort | uniq -c
```

**Resultado esperado:** primeiro os IPs ordenados alfabeticamente, depois a contagem correta — "3 10.0.0.1", "1 10.0.0.2", "1 10.0.0.3".

> **Cilada comum:** pular direto pra uniq -c sem o sort, "pra economizar um comando" — o resultado sai tecnicamente errado, contando em blocos separados.
