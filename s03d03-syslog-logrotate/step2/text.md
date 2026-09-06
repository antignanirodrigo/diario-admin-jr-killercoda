## Ação: Apague o arquivo enquanto o tail ainda está rodando, e confirme que o espaço ainda está preso.

ver com os próprios olhos o "(deleted)" no lsof é o que fixa o conceito de inode preso — muito mais concreto que só ouvir a explicação.

```bash
rm teste.log
lsof | grep deleted
```

**Resultado esperado:** arquivo listado como (deleted) no lsof, ainda ocupando espaço.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `rm teste.log` — Remove o NOME do arquivo do diretório — mas o conteúdo continua existindo enquanto o tail -f mantém ele aberto.
- `lsof` — Lista arquivos abertos por processos no sistema (list open files).
- `| grep deleted` — Filtra a saída do lsof para mostrar só arquivos marcados como '(deleted)' — removidos do nome, mas ainda presos por um processo.
</details>

> **Cilada comum:** rodar rm de novo no mesmo caminho achando que vai "apagar de vez" — o nome já sumiu, rm de novo não faz nada.

> **Se der diferente:** lsof | grep deleted não mostra nada, mesmo com o tail -f ainda rodando → confira se o tail -f da janela 1 realmente ainda está ativo — se ele foi encerrado sem você perceber, o arquivo já não está mais "segurado" por ninguém, e o comportamento muda. "lsof: command not found" → instale com sudo apt install lsof — em algumas distros mínimas ele não vem por padrão.
