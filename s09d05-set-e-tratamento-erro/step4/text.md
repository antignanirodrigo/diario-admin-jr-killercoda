## Ação: teste o script com um diretório válido, confirmando que ele continua funcionando normalmente no caminho de sucesso.

confirmar que o caminho feliz continua funcionando é o que garante que a proteção não virou um obstáculo pro uso normal do script.

```bash
PASTA_ERRADA=/tmp ./teste.sh
```

**Resultado esperado:** "continuei" aparece normalmente — a proteção não atrapalha o caso válido, só bloqueia o inválido.

> **Cilada comum:** testar só o caso de erro e nunca confirmar que o caso de sucesso continua passando — uma proteção mal escrita pode bloquear até entradas válidas.
