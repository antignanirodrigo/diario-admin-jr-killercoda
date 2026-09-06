## Ação: monte uma cadeia completa de investigação, combinando erro+saída, filtro e tee.

essa é a cadeia completa exatamente como você usaria numa investigação real — 2>&1 garante que nada se perde, grep reduz ruído, tee -a preserva evidência sem cegar a tela.

```bash
journalctl -u ssh --since '1 hour ago' 2>&1 | grep -i fail | tee -a ssh_investigacao.log
```

**Resultado esperado:** cadeia funcionando, mostrando na tela e gravando filtrado no arquivo simultaneamente.

> **Cilada comum:** colocar o 2>&1 na posição errada da cadeia — ele precisa vir logo depois do comando original, antes do primeiro pipe, senão pode não capturar os erros esperados.
