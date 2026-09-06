## Ação: Remova a pasta de teste usando o caminho absoluto completo, confirmado pelo pwd do passo 2.

caminho absoluto (começando com /) sempre aponta pro mesmo lugar, não importa de onde você rodou o comando — elimina o risco de ../ apontar pro lugar errado.

```bash
rm -rf /caminho/absoluto/confirmado/teste_cache/
```

**Resultado esperado:** pasta removida, backup ainda existe intacto.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `rm` — Remove arquivos ou pastas — não tem lixeira, a remoção é definitiva.
- `-r` — Recursivo: necessário para remover uma pasta e tudo dentro dela, não só arquivos soltos.
- `-f` — Força a remoção sem pedir confirmação e sem erro se o alvo não existir — por isso o cuidado extra de confirmar o caminho ANTES de rodar.
- `/caminho/absoluto/...` — Caminho absoluto (começa com /), que sempre aponta para o mesmo lugar não importa de onde o comando é executado — elimina o risco de um caminho relativo apontar para a pasta errada.
</details>

> **Cilada comum:** copiar e colar um caminho relativo (../teste_cache/) de um comando anterior sem adaptar pro absoluto — é exatamente esse tipo de descuido que causa remoção no lugar errado.

> **Se der diferente:** Não sei qual é o "caminho absoluto confirmado" → é a saída exata do pwd do passo 2, com /teste_cache no final. Exemplo: se o pwd mostrou /home/adminjr , o comando é rm -rf /home/adminjr/teste_cache/ . "rm: cannot remove ... No such file or directory" → o caminho digitado não bate com o do pwd . Copie o caminho absoluto exato, não digite de memória.
