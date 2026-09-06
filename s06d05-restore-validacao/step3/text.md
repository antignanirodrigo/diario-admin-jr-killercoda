## Ação: compare o restaurado com o que você esperava, usando diff e contagem de arquivos.

diff e contagem de arquivos são a checagem rápida e objetiva que substitui o "parece que está tudo bem" por uma confirmação real.

```bash
diff -rq ~/lab/restore_test/ ~/lab/origem_esperada/
find ~/lab/restore_test -type f | wc -l
```

**Resultado esperado:** confirmação de que a estrutura e a contagem de arquivos batem com o esperado.

> **Cilada comum:** parar por aqui achando que estrutura correta já é prova suficiente — como você vai ver na Questão 2, ainda falta o teste funcional.
