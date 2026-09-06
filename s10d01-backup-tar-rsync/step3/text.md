## Ação: simule uma falha apontando o tar pra uma origem que não existe, e confirme que o script para com a mensagem correta.

forçar a falha de propósito é o único jeito de confirmar que a proteção realmente funciona — sem testar o caminho de erro, você só está confiando na intenção do código, não no comportamento real.

```bash
sed -i 's#~/lab_backup/origem#/caminho/que/nao/existe#' backup.sh
./backup.sh; echo "exit code: $?"
cat ~/lab_backup/backup.log
```

**Resultado esperado:** "ERRO no tar" no log, exit code diferente de zero, script encerrado antes de qualquer outra etapa.

> **Cilada comum:** nunca testar deliberadamente o caminho de falha — é exatamente esse teste que faltou no script original da história.
