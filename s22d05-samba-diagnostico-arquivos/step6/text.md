## Ação: Aplique a correção com find + chmod separando arquivos e pastas, confirme o resultado e apague a árvore de teste inteira.

fecha o ciclo criar → diagnosticar → corrigir → desfazer: nada além dessa pasta de teste foi tocado no sistema — o "ZERO mudança" que fecha bem qualquer laboratório de permissão em massa, ainda mais importante aqui, onde o comando é recursivo e arriscado se apontado pro lugar errado.

```bash
find /dados/uploads-teste -type f -exec chmod 664 {} \;
find /dados/uploads-teste -type d -exec chmod 775 {} \;
find /dados/uploads-teste -not -perm 664 -type f
ls -lR /dados/uploads-teste
rm -rf /dados/uploads-teste
ls /dados/uploads-teste 2>/dev/null || echo "laboratório limpo"
```

**Resultado esperado:** o find de checagem não retorna nenhum arquivo fora do padrão, o ls mostra tudo em 664/775, e por fim a mensagem "laboratório limpo" confirma que a árvore de teste inteira foi removida.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `find /dados/uploads-teste` — Busca recursivamente a partir desse diretório, percorrendo todas as subpastas.
- `-type f` — Filtra o resultado só pra ARQUIVOS comuns, ignorando diretórios — essencial pra não aplicar a mesma permissão em pastas, que precisam de bit de execução.
- `-exec chmod 664 {} \;` — Pra cada resultado encontrado, executa chmod 664 nele. {} é substituído pelo caminho do arquivo encontrado, e \; marca o fim do comando executado (a barra escapa o ; pra o shell não interpretar como fim do find).
</details>

> **Cilada comum:** esquecer a árvore de teste na VM, ou pior, digitar o caminho errado no rm -rf. Sempre confira o caminho com pwd antes de confirmar um rm -rf recursivo.

> **Se der diferente:** find ainda retorna arquivos fora do padrão → confira se algum arquivo tinha um bit especial (setuid/setgid/sticky) que o chmod numérico simples não tocou como esperado — liste com ls -l e ajuste manualmente esse caso específico.
