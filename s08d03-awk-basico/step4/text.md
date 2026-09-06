## Ação: adicione a soma por cima do filtro já validado.

ver o resultado bater com a conta manual é a prova final de que a lógica está certa, antes de rodar a mesma expressão num log real de milhares de linhas.

```bash
awk '$7==200 {soma += $8} END {print soma}' teste.log
```

**Resultado esperado:** 3072 — batendo exatamente com o cálculo manual que você já sabia (1024 + 2048).

> **Cilada comum:** mudar o filtro E adicionar a soma ao mesmo tempo, sem testar cada mudança separadamente — se algo der errado, fica mais difícil saber qual parte falhou.
