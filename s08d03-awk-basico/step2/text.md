## Ação: confirme a linha completa, depois identifique manualmente qual campo é qual.

confirmar o formato antes de escrever qualquer condição é o que evita o erro do "$9 sempre é status" — cada log tem sua própria numeração de campos.

```bash
awk '{print $0}' teste.log
awk '{print NF, $7, $8}' teste.log
```

**Resultado esperado:** mapeamento correto — status é o campo 7, bytes é o campo 8, nesse formato específico de log.

> **Cilada comum:** copiar um número de campo de outro log/tutorial sem confirmar no arquivo real que você está processando.
