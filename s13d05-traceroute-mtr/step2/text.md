## Ação: identifique se algum salto específico destoa dos vizinhos.

Por quê: comparar com os vizinhos é o que separa "esse salto tem um problema real" de "esse salto só despriorizou minha sondagem".

```bash
# procure por Loss% ou Avg muito acima dos saltos ao redor
```

**Resultado esperado:** ou nenhum salto anômalo (rede saudável), ou um salto isolado com números destoantes.

> **Cilada comum:** olhar só um salto isolado sem comparar com os saltos seguintes — isso é exatamente o erro que a questão 3 desta aula testa.
