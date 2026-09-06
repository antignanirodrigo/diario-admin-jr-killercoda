## Ação: Compare o uso e tipo de montagem atual com o mapa já desenhado.

cruzar df -T com lsblk/fdisk/blkid é o passo de validação final — se os quatro comandos contarem a mesma história, o mapa está confiável.

```bash
df -T
```

**Resultado esperado:** mapa validado, sem discrepância entre as ferramentas.

> **Cilada comum:** confiar só numa das quatro fontes — cada uma responde uma pergunta ligeiramente diferente, e só juntas formam o mapa completo.
