## Ação: confirme que o redirecionamento completo captura tudo, inclusive erros, removendo a tarefa de teste ao final.

o log é a única evidência de uma execução agendada — sem ele, você está adivinhando o que aconteceu de madrugada, sem ninguém olhando.

```bash
crontab -l | grep -v teste.sh | crontab -
cat /tmp/teste.log
```

**Resultado esperado:** log completo com a saída real da execução, tarefa de teste removida do crontab pra não continuar rodando.

> **Cilada comum:** esquecer de limpar as tarefas de teste do crontab — elas continuam consumindo recursos e gerando log indefinidamente.
