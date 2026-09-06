## Ação: Rode vmstat em estado normal e anote os valores de referência.

ter um "estado normal" anotado é o que permite reconhecer rápido quando um vmstat real está fora do padrão — sem baseline, você não sabe o que é anormal.

```bash
vmstat 2 5
```

**Resultado esperado:** valores baixos ou zero de si/so em estado saudável.

> **Cilada comum:** rodar vmstat sem argumentos e olhar só a primeira linha — a primeira amostra do vmstat é sempre a média desde o boot, não o estado atual; as amostras seguintes são as reais.
