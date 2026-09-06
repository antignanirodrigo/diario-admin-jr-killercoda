## Ação: pesquise o número de pelo menos 3 outros sinais e o que cada um faz.

entender que kill envia sinais, não só "mata", muda completamente como você lê a documentação de qualquer serviço que reage a sinais (ex.: nginx recarregando config com SIGHUP).

```bash
kill -l | head -20
```

**Resultado esperado:** compreensão de que sinais têm propósitos variados (SIGHUP recarrega config, SIGSTOP pausa, SIGCONT retoma) — não só "matar".

> **Cilada comum:** assumir que todo processo trata todo sinal da mesma forma — o comportamento de cada sinal depende de como o processo foi programado pra reagir a ele.
