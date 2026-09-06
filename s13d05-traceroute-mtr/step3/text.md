## Ação: compare o salto suspeito com os saltos seguintes.

Por quê: se a perda persistisse em todos os saltos depois do suspeito, a causa seria diferente — provavelmente afetando o tráfego real, não só o ICMP de diagnóstico.

```bash
# salto 4: 40% perda → salto 5 (destino): 0% perda?
# se sim, o problema é isolado no salto 4
```

**Resultado esperado:** se os saltos seguintes voltam ao normal, a perda isolada pode ser só despriorização de ICMP.

> **Cilada comum:** contatar o dono do equipamento do salto suspeito sem checar os saltos seguintes primeiro — pode ser uma reclamação sem fundamento real.
