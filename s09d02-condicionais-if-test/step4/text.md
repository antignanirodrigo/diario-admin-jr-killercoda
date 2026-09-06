## Ação: teste a diferença entre = e -eq comparando "18" com "018" nos dois modos.

ver os dois operadores discordarem no mesmo par de valores é a prova mais direta de que = e -eq não são intercambiáveis — é exatamente o que a Questão 3 vai testar.

```bash
[ "18" = "018" ] && echo "igual (string)" || echo "diferente (string)"
[ "18" -eq "018" ] && echo "igual (numero)" || echo "diferente (numero)"
```

**Resultado esperado:** "diferente (string)" no primeiro teste, "igual (numero)" no segundo — resultados opostos, confirmando a distinção.

> **Cilada comum:** usar = pra comparar números "porque funcionou nos testes simples" — casos com zeros à esquerda (018) ou espaços revelam a diferença real, que passa despercebida em testes rasos.
