## Ação: teste com a falha no segundo e no terceiro check também, confirmando que o contador funciona em qualquer posição.

testar a falha em posições diferentes é o que prova que a correção é estrutural, não um acaso que só funciona pro cenário específico testado antes.

```bash
sed -i 's/check1() { echo "CHECK1: FALHA"; return 1; }/check1() { echo "CHECK1: OK"; return 0; }/; s/check2() { echo "CHECK2: OK"; return 0; }/check2() { echo "CHECK2: FALHA"; return 1; }/' check.sh
./check.sh; echo "exit code: $?"
```

**Resultado esperado:** exit code 2 de novo, mesmo com a falha agora no meio (não mais na primeira posição).

> **Cilada comum:** testar só um cenário de falha (sempre na mesma posição) e assumir que está tudo resolvido — o bug original só apareceu porque a falha não era a última checagem.
