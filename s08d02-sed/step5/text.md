## Ação: teste a diferença entre sed com e sem /g, na linha com múltiplas ocorrências.

ver essa diferença ao vivo, num teste isolado e simples, é o que fixa a regra pra sempre — é exatamente o que a Questão 3 vai testar.

```bash
echo "porta_antiga e porta_antiga de novo" | sed 's/porta_antiga/porta_nova/'
echo "porta_antiga e porta_antiga de novo" | sed 's/porta_antiga/porta_nova/g'
```

**Resultado esperado:** sem /g, só a primeira ocorrência muda; com /g, as duas mudam — a comparação lado a lado prova a diferença.

> **Cilada comum:** esquecer o /g em arquivos com múltiplas ocorrências por linha — o comando "funciona" (não dá erro), mas troca só parcialmente, um bug silencioso.
