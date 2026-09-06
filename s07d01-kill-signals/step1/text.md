## Ação: inicie um processo de teste simples em background e anote o PID.

ter um PID conhecido, controlado por você, é o que permite praticar a escalada de sinais sem risco de afetar algo importante.

```bash
sleep 300 &
echo $!
```

**Resultado esperado:** PID do processo de teste identificado (o `$!` mostra o PID do último comando em background).

> **Cilada comum:** confundir o PID do sleep com o PID do shell — sempre confirme com `ps -p` antes de mandar qualquer sinal.
