## Ação: leia o status detalhado desse processo direto do kernel, via /proc.

/proc é a fonte primária, direto do kernel — é o que você consulta quando precisa da verdade mais exata possível, além do que ps já resume.

```bash
cat /proc/<PID>/status | head -10
```

**Resultado esperado:** campos Name, State, Pid, PPid, VmRSS visíveis, compreendidos um a um.

> **Cilada comum:** tentar abrir /proc/PID/status num editor de texto achando que pode editar — é gerado dinamicamente só pra leitura, editar não faz nada (você vai confirmar isso na Questão 3).
