## Ação: documente cenário de falha testado, cenário de sucesso testado, conteúdo do log final.

documentar os dois cenários (falha e sucesso) é a prova de que o script foi testado de verdade nos dois caminhos, não só no que "sempre funciona".

```bash
Falha simulada: origem inexistente -> "ERRO no tar" no log, exit 1, script parou
Sucesso: origem válida -> "TAR OK" no log, script completou
Log final conferido linha por linha, não só ausência de erro na tela
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o cenário de sucesso — sem o teste de falha registrado, ninguém sabe se a proteção contra erro realmente foi validada.
