## Ação: aplique renice 19 no PID desse processo e confirme a mudança.

ver o NI mudar de 0 pra 19 na prática é o que fixa a escala invertida do nice — número alto, prioridade baixa.

```bash
sudo renice 19 -p <PID>
ps -o pid,ni,pcpu,comm -p <PID>
```

**Resultado esperado:** valor de NI mudado pra 19, confirmado na coluna ni da saída do ps.

> **Cilada comum:** esquecer de confirmar com ps depois do renice — a mensagem do comando confirma o valor, mas checar de novo garante que ficou aplicado.
