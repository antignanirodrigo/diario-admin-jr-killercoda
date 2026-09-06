## Ação: corrija adicionando aspas duplas na variável e teste de novo com valor vazio.

essa é a correção exata de duas aspas que resolveu o mistério da história — sentir a diferença entre quebrar e simplesmente avaliar como falso.

```bash
sed -i 's/\[ \$DIR/[ "\$DIR"/' teste.sh
unset DIR
./teste.sh
```

**Resultado esperado:** nenhum erro de sintaxe — a condição é avaliada corretamente como falsa (silenciosa), sem quebrar o script.

> **Cilada comum:** colocar aspas só na variável e esquecer do outro lado da comparação — o padrão seguro é aspas nos dois operandos sempre que houver risco de espaço ou caractere especial.
