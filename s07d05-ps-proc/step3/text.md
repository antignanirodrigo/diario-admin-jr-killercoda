## Ação: compare o PPid mostrado no /proc com o que aparece na árvore do ps --forest, confirmando que batem.

cruzar as duas fontes (árvore visual e leitura direta do kernel) é o mesmo tipo de validação cruzada que você já praticou com pvs/vgs/lvs (Semana 5) — duas fontes concordando é evidência mais forte que uma só.

```bash
ps -ef --forest | grep <PID>
cat /proc/<PID>/status | grep PPid
```

**Resultado esperado:** os dois métodos confirmando exatamente a mesma relação de pai/filho — o PPid do /proc bate com o pai visível na árvore.

> **Cilada comum:** confiar só na árvore visual sem cruzar com /proc quando o caso for realmente sensível (investigação de segurança) — a árvore pode ficar confusa com muitos processos, /proc é sempre exato.
