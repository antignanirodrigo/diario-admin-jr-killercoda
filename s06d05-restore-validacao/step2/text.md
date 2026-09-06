## Ação: restaure o backup pra um local de TESTE separado, nunca direto no lugar original ainda.

restaurar num local isolado primeiro é o que teria evitado o pior cenário do incidente da história — descobrir um backup ruim só depois de já ter sobrescrito produção.

```bash
mkdir -p ~/lab/restore_test
rsync -av ~/lab/destino/ ~/lab/restore_test/
```

**Resultado esperado:** conteúdo restaurado num diretório temporário de teste, separado de onde a pasta original ficava.

> **Cilada comum:** restaurar direto no caminho original "pra economizar um passo" — é exatamente esse atalho que transforma um backup ruim numa perda dupla.
