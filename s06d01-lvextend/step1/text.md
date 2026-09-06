## Ação: confirme espaço livre no VG antes de expandir qualquer coisa.

lvextend não cria espaço do nada — ele consome o VFree do VG. Sem confirmar que existe espaço livre suficiente, o comando falha ou expande menos do que você esperava.

```bash
sudo vgs
```

**Resultado esperado:** VFree confirmado (ex.: 24G), disponível pra teste de expansão.

> **Cilada comum:** assumir que "tem espaço" sem checar — em produção, VGs próximos do limite são comuns, e o comando pode simplesmente não ter margem pra dar.
