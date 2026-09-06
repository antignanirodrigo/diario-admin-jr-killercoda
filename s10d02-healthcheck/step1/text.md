## Ação: escreva um script com três checks fictícios, sem contador ainda, e force o primeiro a falhar — reproduza o bug da história.

reproduzir esse bug de propósito, com um exemplo mínimo, é o que torna concreto por que "aparece na tela" não é a mesma coisa que "reflete no exit code".

```bash
cat > check.sh << 'EOF'
#!/bin/bash
check1() { echo "CHECK1: FALHA"; return 1; }
check2() { echo "CHECK2: OK"; return 0; }
check3() { echo "CHECK3: OK"; return 0; }
check1
check2
check3
EOF
chmod +x check.sh
./check.sh; echo "exit code: $?"
```

**Resultado esperado:** "CHECK1: FALHA" aparece na tela, mas exit code final é 0 — a falha foi engolida, exatamente como na história.

> **Cilada comum:** confiar visualmente na saída de texto do script e nunca checar o $? de verdade — é exatamente essa lacuna que faz um sistema de monitoramento nunca disparar o alerta.
