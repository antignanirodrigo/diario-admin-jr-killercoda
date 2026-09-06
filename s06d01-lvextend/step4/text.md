## Ação: complete a expansão rodando o resize correto pro tipo de filesystem identificado, e confirme com df -h.

só depois desse segundo comando o espaço fica realmente disponível pro sistema — é o passo que a maioria dos júniors esquece na pressa.

```bash
sudo resize2fs /dev/vg_data/lv_app
sudo xfs_growfs /app
df -h /app
```

**Resultado esperado:** df -h agora mostra o tamanho novo — expansão completa e validada, o descompasso do passo anterior resolvido.

> **Cilada comum:** rodar resize2fs num filesystem xfs (ou vice-versa) — o comando falha na hora, confirme sempre o tipo antes.
