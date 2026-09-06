## Ação: inicie um segundo processo de teste e pratique a escalada completa: -15, esperar, checar, -9 se necessário.

praticar o fluxo completo, mesmo quando -15 já resolve, é o que fixa a sequência como reflexo automático pra quando você encontrar um processo que realmente ignora o SIGTERM.

```bash
sleep 300 &
kill -15 $!
sleep 5
ps -p $!
kill -9 $!  # só se o ps -p anterior ainda mostrar o processo
```

**Resultado esperado:** sequência completa praticada e documentada — na maioria dos casos o -15 já resolve, mas você pratica a escalada como se precisasse do -9.

> **Cilada comum:** pular direto pro kill -9 "só pra garantir" — isso anula todo o propósito do exercício, que é praticar esperar pela evidência antes de forçar.
