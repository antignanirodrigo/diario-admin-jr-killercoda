## Ação: adicione uma guarda com -z no início, testando o caso de variável vazia com mensagem clara.

a guarda explícita é o que transforma "falha silenciosa" em "falha clara e controlada" — exatamente a diferença que separa um script frágil de um profissional.

```bash
sed -i '2i if [ -z "$DIR" ]; then echo "ERRO: DIR vazio" >&2; exit 1; fi' teste.sh
unset DIR
./teste.sh; echo "exit code: $?"
```

**Resultado esperado:** mensagem "ERRO: DIR vazio" e exit code 1, em vez de silêncio ou erro de sintaxe confuso.

> **Cilada comum:** confiar só nas aspas sem adicionar a guarda -z — aspas evitam a quebra de sintaxe, mas sem a guarda o script pode continuar rodando silenciosamente com um valor vazio que não deveria ser aceito.
