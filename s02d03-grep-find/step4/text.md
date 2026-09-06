## Ação: Combine os dois comandos numa busca só: find filtra os arquivos, grep procura o texto neles.

essa combinação é o que você realmente usa em produção — restringir primeiro o universo de arquivos (só os recentes, por exemplo) antes de rodar uma busca de texto mais pesada.

```bash
find . -name "*.log" -mtime -1 -exec grep -n "ERROR" {} \;
```

**Resultado esperado:** resultado igual ao do grep -r isolado, mas agora restrito só aos arquivos que o find filtrou.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `find .` — Busca arquivos a partir da pasta atual, percorrendo subpastas.
- `-name "*.log"` — Filtra só arquivos cujo nome termina em .log — o asterisco é um coringa para qualquer nome antes da extensão.
- `-mtime -1` — Filtra por data de modificação: o sinal de menos antes do 1 significa 'modificado há menos de 1 dia', ou seja, arquivos recentes.
- `-exec ... {} \;` — Para cada arquivo encontrado pelo find, executa o comando indicado, substituindo {} pelo nome do arquivo; o ponto-e-vírgula escapado (\;) marca o fim do comando executado.
- `grep -n "ERROR"` — O comando executado em cada arquivo filtrado — a mesma busca de texto do passo anterior, agora restrita a um conjunto menor de arquivos.
</details>

> **Cilada comum:** esquecer o \; no final do -exec — sem ele, o comando não sabe onde termina a ação a ser executada em cada arquivo encontrado.
