## Ação: crie 3 arquivos de teste .log, incluindo um com espaço no nome.

incluir de propósito um nome com espaço é o que reproduz exatamente a armadilha da história — sem esse caso, o bug nunca aparece nos testes.

```bash
mkdir -p ~/lab_loops && cd ~/lab_loops
touch app.log "relatorio final.log" "erro (1).log"
```

**Resultado esperado:** 3 arquivos de teste criados, um deles com espaço no nome.

> **Cilada comum:** testar só com nomes simples (sem espaço) — assim como na primeira tentativa da história, o bug só aparece com dados reais e variados.
