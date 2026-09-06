## Ação: Confirme onde você está, veja o que existe na pasta, depois navegue até /var/log.

confirmar a posição antes e depois de navegar é o mesmo hábito do Dia 1 e do Dia 2 — sem isso, você não tem certeza de que o próximo comando vai atuar onde você pensa que está.

```bash
pwd
ls -la
cd /var/log
pwd
```

**Resultado esperado:** o segundo pwd mostra /var/log , confirmando que a navegação funcionou.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `pwd` — Mostra o caminho absoluto completo do diretório atual.
- `ls -l` — Lista o conteúdo do diretório em formato detalhado: permissões, dono, grupo, tamanho e data.
- `-a` — Inclui também arquivos e pastas ocultos (os que começam com ponto).
- `cd /var/log` — Muda o diretório de trabalho da shell para /var/log, o caminho padrão dos logs do sistema.
- `pwd (segunda vez)` — Confirma que a navegação funcionou, mostrando o novo diretório atual.
</details>

> **Cilada comum:** encadear vários cd seguidos sem checar pwd entre eles — depois de 3-4 comandos, é fácil perder a noção de onde você realmente está.
