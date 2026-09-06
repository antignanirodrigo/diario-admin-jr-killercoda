## Ação: rode o mesmo teste com glob (*.log) e compare o resultado.

comparar lado a lado o comportamento errado ($(ls)) com o correto (glob) é a prova mais direta de por que a troca de sintaxe resolve o problema.

```bash
for f in *.log; do echo mv "$f" "arquivado_$f"; done
```

**Resultado esperado:** os três arquivos aparecem corretamente, "relatorio final.log" tratado como um único item, sem quebrar.

> **Cilada comum:** esquecer as aspas em "$f" mesmo usando glob — o glob resolve a expansão do padrão, mas a variável ainda precisa de aspas ao ser usada dentro do loop.
