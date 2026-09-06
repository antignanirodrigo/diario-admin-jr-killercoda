## Ação: Crie uma árvore de teste com arquivos e pastas em permissões restritivas — o mesmo cenário do time reclamando de arquivos antigos inacessíveis.

sem essa árvore de teste reproduzindo o sintoma, o find + chmod da próxima etapa não teria nada de errado pra corrigir — você precisa do problema criado de propósito na sua VM antes de praticar a correção.

```bash
mkdir -p /dados/uploads-teste/subpasta
touch /dados/uploads-teste/arquivo1.jpg /dados/uploads-teste/subpasta/arquivo2.jpg
chmod 600 /dados/uploads-teste/arquivo1.jpg /dados/uploads-teste/subpasta/arquivo2.jpg
chmod 700 /dados/uploads-teste/subpasta
ls -lR /dados/uploads-teste
```

**Resultado esperado:** os dois arquivos aparecem como -rw-------, e a subpasta como drwx------ — exatamente o tipo de "arquivo antigo" que ninguém além do dono consegue abrir.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `mkdir -p /dados/uploads-teste/subpasta` — Cria a árvore de diretórios de teste, incluindo a subpasta, de uma vez (-p cria pastas pai que faltarem).
- `touch arquivo1.jpg ... arquivo2.jpg` — Cria dois arquivos vazios de teste, um na raiz da árvore e outro dentro da subpasta.
- `chmod 600 arquivo1.jpg arquivo2.jpg` — Restringe os dois arquivos a leitura/escrita só pro dono (rw-------), simulando arquivos antigos inacessíveis pro resto do time.
- `chmod 700 subpasta` — Restringe a subpasta a acesso total só pro dono (rwx------), sem nenhuma permissão pra grupo ou outros.
- `ls -lR /dados/uploads-teste` — Lista recursivamente (-R) em formato longo (-l) toda a árvore, pra conferir visualmente as permissões aplicadas.
</details>

> **Cilada comum:** criar isso fora de uma pasta de teste isolada. Use um diretório dedicado como /dados/uploads-teste — você vai apagá-lo inteiro no último passo.

> **Se der diferente:** "touch: cannot touch ...: Permission denied" → falta sudo se /dados não pertencer ao seu usuário; ou crie a árvore de teste dentro do seu $HOME pra simplificar (ex: ~/uploads-teste).
