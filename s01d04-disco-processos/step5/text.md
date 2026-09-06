## Ação: Escreva um relatório separando claramente "problema de disco" de "problema de memória".

separar por escrito força você a não misturar as duas causas na cabeça — é fácil, sob pressão de um alerta, tratar tudo como "um problema só".

```bash
# não é comando de shell — é o relatório, 2 seções
# ex: "DISCO: /var/log com 6.8G (df -h, du -sh). MEMÓRIA: app-worker com 18.7% (ps aux). Recursos distintos, sem relação confirmada entre si."
```

**Resultado esperado:** duas seções distintas no relatório, cada uma com sua própria evidência e comando usado.

> **Cilada comum:** escrever um relatório único misturando disco e memória na mesma frase — isso empurra quem for agir depois a tentar uma solução só, que provavelmente não resolve nenhum dos dois direito.
