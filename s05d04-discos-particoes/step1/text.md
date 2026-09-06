## Ação: Veja a árvore completa de discos e partições.

lsblk -f é o ponto de partida de qualquer mapeamento — dá a visão geral antes de mergulhar em detalhes de cada partição individual.

```bash
lsblk -f
```

**Resultado esperado:** mapa visual completo da estrutura de storage atual.

> **Cilada comum:** rodar lsblk sem -f e perder a informação de tipo de filesystem e ponto de montagem — a flag -f é o que torna a árvore realmente útil.
