## Ação: Acompanhe um arquivo em tempo real e, em outra janela/aba, adicione uma linha nova nele.

essa é a ferramenta certa pra qualquer investigação "ao vivo" — foi assim que o log do chamado de hoje mostrou o erro aparecendo e sumindo em tempo real.

```bash
tail -f app.log
echo "teste" >> app.log
```

**Resultado esperado:** a linha nova aparece automaticamente na tela do tail -f, sem precisar rodar o comando de novo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `tail` — Mostra o final de um arquivo — por padrão, as últimas 10 linhas.
- `-f` — Modo 'follow': depois de mostrar o final, continua rodando e exibe novas linhas assim que são escritas — é o que permite acompanhar um log ao vivo.
- `app.log` — O arquivo sendo acompanhado.
</details>

> **Cilada comum:** esquecer tail -f rodando numa sessão e sair sem encerrar com Ctrl+C — não altera nada no sistema, mas ocupa a sessão sem necessidade.
