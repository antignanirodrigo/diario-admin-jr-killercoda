## Ação: adicione um contador de falhas e repita o teste com a mesma falha no primeiro check.

esse é o contador exato que teria feito o alerta disparar de verdade na história — cada falha soma, independente de checks seguintes terem passado.

```bash
cat > check.sh << 'EOF'
#!/bin/bash
FALHAS=0
check1() { echo "CHECK1: FALHA"; return 1; }
check2() { echo "CHECK2: OK"; return 0; }
check3() { echo "CHECK3: OK"; return 0; }
check1 || FALHAS=$((FALHAS+1))
check2 || FALHAS=$((FALHAS+1))
check3 || FALHAS=$((FALHAS+1))
[ "$FALHAS" -eq 0 ] || exit 2
EOF
chmod +x check.sh
./check.sh; echo "exit code: $?"
```

**Resultado esperado:** exit code agora é 2 — a falha do primeiro check não se perdeu mais.

> **Cilada comum:** usar && em vez de || no encadeamento — && incrementaria o contador quando o check tivesse SUCESSO, invertendo toda a lógica.
