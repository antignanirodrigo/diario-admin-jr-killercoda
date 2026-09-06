## Ação: encerre os dois processos de teste, aplicando a escalada de sinais do Dia 1.

encerrar corretamente os processos de teste é o que evita deixar CPU consumida à toa depois do laboratório — conecta direto com o que você praticou ontem.

```bash
kill -15 <PID1> <PID2>
```

**Resultado esperado:** ambiente de teste limpo, sem processos de carga rodando.

> **Cilada comum:** fechar o terminal sem matar os processos — eles continuam rodando em background mesmo depois do terminal fechado.
