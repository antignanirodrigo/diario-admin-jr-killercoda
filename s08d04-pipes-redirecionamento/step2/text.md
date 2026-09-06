## Ação: rode o mesmo comando de novo, sem -a, e confirme que o conteúdo anterior foi sobrescrito.

reproduzir de propósito o erro do colega da segunda investigação é o que fixa, na prática, por que -a é essencial em investigações de várias etapas.

```bash
echo "segunda investigação" | tee investigacao.log
cat investigacao.log
```

**Resultado esperado:** arquivo com só "segunda investigação" — "primeira investigação" desapareceu, sobrescrita.

> **Cilada comum:** assumir por padrão que tee sempre acrescenta — o comportamento padrão (sem -a) é sobrescrever, exatamente o oposto do que muita gente espera.
