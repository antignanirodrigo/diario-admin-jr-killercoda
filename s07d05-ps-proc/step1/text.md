## Ação: veja a árvore completa de processos e identifique um que você mesmo iniciou.

ver sua própria árvore de processos é o exemplo mais fácil de entender — você já sabe a resposta certa (foi você que abriu), então pode confirmar visualmente que a árvore está contando a verdade.

```bash
ps -ef --forest
```

**Resultado esperado:** árvore visível com indentação, mostrando a cadeia até um processo seu (ex.: seu shell, ou algo que você abriu nele).

> **Cilada comum:** confundir a indentação — cada nível mais fundo (mais \_) é um filho mais recente na cadeia, não o contrário.
