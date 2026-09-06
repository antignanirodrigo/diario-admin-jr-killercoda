## Ação: rode só o cut isolado e confirme que a coluna certa está sendo extraída.

testar cut isolado primeiro é o que garante que a coluna extraída é realmente a certa, antes de complicar a cadeia com mais ferramentas.

```bash
cut -d' ' -f1 teste.log
```

**Resultado esperado:** lista de 5 IPs, na ordem original do arquivo, sem ordenação ainda.

> **Cilada comum:** assumir o delimitador errado — se o log usar tab ou vírgula em vez de espaço, -d' ' extrai a coluna errada silenciosamente.
