## Ação: teste a função com um argumento que tenha espaço, confirmando que as aspas protegem corretamente.

essa é exatamente a armadilha que a Questão 3 vai testar — argumento com espaço, sem aspas dentro da função, quebraria em dois valores separados.

```bash
touch "log com espaco.log"
./teste2.sh; verificar_arquivo() { local arq="$1"; [ -f "$arq" ] && echo "existe: $arq"; }; verificar_arquivo "log com espaco.log"
```

**Resultado esperado:** "existe: log com espaco.log" — o argumento com espaço tratado como um único valor, sem quebrar.

> **Cilada comum:** proteger com aspas só na chamada da função e esquecer de proteger também dentro dela — as aspas precisam estar nos dois lugares.
