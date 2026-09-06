## Ação: Encerre a gravação e confira o que ficou registrado — esse arquivo é a sua entrega de hoje.

fecha o ciclo do dia: você observou, registrou e agora tem evidência entregável. Nenhuma configuração do servidor foi alterada — exatamente o que o chamado pedia.

```bash
exit
ls -lh ~/levantamento-*.log
head -30 ~/levantamento-*.log
```

**Resultado esperado:** "Script done" na tela, o arquivo listado com tamanho maior que zero e as primeiras linhas mostrando os comandos que você rodou.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `exit` — Sai da shell atual — como você está dentro de uma sessão gravada por `script`, isso também encerra a gravação e finaliza o arquivo de log.
- `ls -l` — Lista o arquivo em formato detalhado: permissões, dono, tamanho, data.
- `-h` — Mostra o tamanho em formato legível (K, M, G) em vez do número bruto de bytes.
- `~/levantamento-*.log` — Caminho com curinga (*) — casa com o nome exato do arquivo, já que ele tem a data de hoje embutida no nome.
- `head -n` — Mostra só as primeiras linhas de um arquivo, em vez do conteúdo inteiro.
- `-30` — Quantidade de linhas a mostrar — aqui, as primeiras 30, suficiente pra confirmar que a gravação capturou os comandos certos.
</details>

> **Cilada comum:** deixar a sessão gravando aberta por horas. O arquivo cresce sem parar e vira lixo em vez de evidência — encerre assim que terminar o levantamento.

> **Se der diferente:** O arquivo tem caracteres estranhos ( ^[[0m ) → são códigos de cor do terminal, é normal. Para ler limpo: cat -v arquivo.log ou sed 's/\x1b\[[0-9;]*m//g' arquivo.log .
