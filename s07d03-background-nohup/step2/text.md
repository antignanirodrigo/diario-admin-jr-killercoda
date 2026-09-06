## Ação: inicie o script com nohup e disown, redirecionando a saída pra um log.

essa é exatamente a sequência que teria salvo a migração da história — nohup no processo, disown no shell, as duas camadas juntas.

```bash
nohup ./teste.sh > teste.log 2>&1 &
disown -h %1
```

**Resultado esperado:** job rodando em background, com PID confirmado, desvinculado do shell atual.

> **Cilada comum:** esquecer o redirecionamento (> teste.log 2>&1) — sem ele, a saída do processo pode travar ou se perder quando a sessão original cai.
