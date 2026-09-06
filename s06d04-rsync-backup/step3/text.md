## Ação: rode sem -n pra copiar de verdade, depois apague um arquivo da origem (não do destino) — reproduzindo o cenário da história.

criar de propósito o cenário "arquivo sumiu da origem" é o que te deixa pronto pra reconhecer esse padrão numa saída de dry-run real.

```bash
rsync -av ~/lab/origem/ ~/lab/destino/
rm ~/lab/origem/style.css
```

**Resultado esperado:** destino com os dois arquivos copiados; origem agora com só um arquivo, sem o style.css.

> **Cilada comum:** esquecer qual arquivo você apagou de propósito — anote antes, pra depois conseguir confirmar se o dry-run mostrou exatamente o esperado.
