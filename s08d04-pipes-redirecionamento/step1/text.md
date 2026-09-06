## Ação: rode um comando de teste com saída simples usando tee (sem -a) e confirme o arquivo criado.

ver tee funcionar num caso simples primeiro é o que confirma o comportamento básico antes de complicar com pipes e filtros.

```bash
echo "primeira investigação" | tee investigacao.log
cat investigacao.log
```

**Resultado esperado:** saída visível na tela E gravada no arquivo, os dois mostrando "primeira investigação".

> **Cilada comum:** assumir que tee só grava, sem perceber que ele também imprime na tela — é exatamente esse "dos dois ao mesmo tempo" que resolve o dilema da história.
