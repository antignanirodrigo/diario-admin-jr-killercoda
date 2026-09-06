## Ação: adicione uma terceira chamada da mesma função, confirmando que o reuso funciona sem duplicar código.

adicionar uma terceira chamada sem duplicar nada é a prova final de que a refatoração cumpriu o objetivo — reuso de verdade, não só organização cosmética.

```bash
echo 'verificar_arquivo config.conf' >> teste2.sh
./teste2.sh
```

**Resultado esperado:** três chamadas funcionando, uma única definição de função — nenhum código novo copiado.

> **Cilada comum:** voltar ao hábito de copiar e colar "só dessa vez, é rápido" — é exatamente esse atalho que gerou o problema original da história.
