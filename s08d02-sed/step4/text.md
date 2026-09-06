## Ação: compare o backup com o arquivo modificado, confirmando exatamente o que mudou.

diff é a confirmação final e objetiva — não é "parece que mudou certo", é a prova exata linha por linha do que foi alterado.

```bash
diff -u teste.conf.bak teste.conf
```

**Resultado esperado:** diff mostrando as 3 linhas alteradas, cada uma com porta_antiga trocada por porta_nova (inclusive as duas ocorrências no comentário).

> **Cilada comum:** pular esse diff achando que a prévia já foi confirmação suficiente — a prévia mostra o que vai acontecer, o diff confirma o que realmente aconteceu.
