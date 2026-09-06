## Ação: confirme que a remoção é esperada, rode sem -n pra aplicar de verdade, e documente o resultado.

documentar origem, destino e o que foi removido é o que transforma "rodei um comando" em "fiz um backup profissional e rastreável".

```bash
rsync -av --delete ~/lab/origem/ ~/lab/destino/
```

**Resultado esperado:** destino agora espelha exatamente a origem (sem style.css), reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** aplicar o --delete de verdade sem ter revisado o dry-run linha por linha antes — a revisão não é opcional só porque o comando "parece" certo.
