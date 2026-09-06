## Ação: documente a causa raiz correta.

Por quê: registrar "não era o DNS" explicitamente evita que a próxima pessoa reabra a investigação no lugar errado.

```bash
# DNS: sempre esteve correto (192.168.10.80)
# causa real: entrada obsoleta em /etc/hosts local
# ação: backup + remoção da linha + getent confirmou
```

**Resultado esperado:** relatório curto confirmando a causa raiz correta — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** registrar só "corrigido" sem anotar onde estava o override — a mesma entrada esquecida pode reaparecer em outro PC clonado da mesma imagem.
