## Ação: confirme com ps -p que o processo sobreviveu, e acompanhe o log pra ver o progresso.

ps -p confirma existência, mas só o log confirma progresso real — a distinção que a Questão 2 vai testar.

```bash
ps -p <PID> -o pid,stat,cmd
tail -f teste.log
```

**Resultado esperado:** processo confirmado vivo, log mostrando progresso contínuo (não travado no mesmo número).

> **Cilada comum:** confiar só no ps -p e fechar o chamado — um processo pode existir e estar travado ao mesmo tempo, sem o log você não sabe qual é o caso.
