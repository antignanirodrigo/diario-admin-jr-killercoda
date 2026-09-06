## Ação: Documente o inventário final completo.

esse inventário é literalmente a base do trabalho de amanhã com LVM — sem ele documentado, você reinicia a investigação do zero antes de cada mudança de storage.

```bash
# não é comando de shell — é a tabela de inventário
# ex: "sda1: ext4, 1G, /boot. sda2: LVM2_member, 79G, sem montagem direta. sdb: 50G, sem partição."
```

**Resultado esperado:** tabela de inventário completa, pronta pra servir de base amanhã.

> **Cilada comum:** documentar só as partições montadas, esquecendo discos/partições "vazios" como sdb — eles são parte do inventário tanto quanto os já usados.
