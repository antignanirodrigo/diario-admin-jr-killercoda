## Ação: identifique o tipo de filesystem do LV de teste — ext4 usa resize2fs, xfs usa xfs_growfs.

resize2fs e xfs_growfs não são intercambiáveis — cada tipo de filesystem tem sua própria ferramenta, e usar a errada simplesmente falha.

```bash
df -T /app
```

**Resultado esperado:** tipo confirmado (ext4 ou xfs), determinando qual comando de resize usar no passo seguinte.

> **Cilada comum:** assumir que todo servidor Linux usa ext4 por padrão — muitas distros modernas (RHEL/CentOS, por exemplo) usam xfs de fábrica.
