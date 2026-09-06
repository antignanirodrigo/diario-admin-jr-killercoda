## Ação: Grave a sessão inteira antes de começar — todo levantamento profissional deixa rastro.

levantamento sem evidência é conversa. Com o log gravado, você entrega um relatório com o que foi realmente executado — e se algo quebrar depois, você prova que não foi você.

```bash
script ~/levantamento-$(date +%F).log     # tudo a partir daqui fica gravado
```

**Resultado esperado:** a mensagem "Script started, output log file is ..." — a partir daí, tudo que você digitar e receber fica salvo no arquivo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `script` — Grava tudo que aparece no terminal (comandos digitados e saídas) num arquivo de log — um gravador de sessão.
- `~/` — Sua pasta pessoal (home) — o arquivo de log é salvo ali, não na pasta atual.
- `$(date +%F)` — Substituição de comando: roda 'date +%F' primeiro e usa o resultado (a data de hoje, formato AAAA-MM-DD) como parte do nome do arquivo.
- `levantamento-...log` — O nome do arquivo de log final, já com a data embutida — facilita achar o log de um dia específico depois.
</details>

> **Cilada comum:** esquecer que a gravação está ativa e digitar senha na sessão. Nada de senha enquanto o script roda — ela ficaria em texto puro no arquivo.

> **Se der diferente:** "script: command not found" → instale com sudo apt install bsdutils (Debian/Ubuntu) ou use tee : comando | tee -a levantamento.log . Quero saber se ainda estou gravando → rode echo $SCRIPT ou observe: ao sair com exit , aparece "Script done".
