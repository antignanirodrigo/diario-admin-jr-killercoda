## Ação: documente cenário testado sem proteção, com set -e, com validação explícita — fechando a Semana 9.

esse comparativo documentado é o que prova, pra qualquer revisão futura, por que as duas camadas juntas são necessárias — não uma ou outra isoladamente.

```bash
Sem proteção: script continua após cd falhar silenciosamente
Com set -e: script para, mas com erro genérico do cd
Com validação explícita: mensagem clara "ERRO: diretório inválido", exit 1
Caso válido: continua funcionando normalmente
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só a versão final "corrigida", sem registrar o comportamento perigoso original — sem esse contraste, fica difícil explicar pra outra pessoa por que essas duas linhas extras importam tanto.
