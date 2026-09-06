## Ação: veja o PATH atual e identifique todas as pastas listadas.

saber ler essa lista é o primeiro passo de qualquer investigação de "command not found" — sem isso, você está adivinhando, não diagnosticando.

```bash
echo $PATH
```

**Resultado esperado:** lista de pastas separadas por dois-pontos, algo como /usr/local/bin:/usr/bin:/bin.

> **Cilada comum:** não notar a ordem das pastas — o shell para na primeira ocorrência do comando, então a ordem importa quando existem duas versões da mesma ferramenta em pastas diferentes.
