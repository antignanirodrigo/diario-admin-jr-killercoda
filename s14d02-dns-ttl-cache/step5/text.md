## Ação: documente o incidente completo.

Por quê: registrar "cache, não mudança que falhou" evita que a próxima pessoa (ou você) repita a edição desnecessária da próxima vez.

```bash
# causa: cache com TTL ainda ativo (não mudança que falhou)
# ação: flush controlado (resolvectl flush-caches)
# registro: nenhuma edição adicional no DNS
```

**Resultado esperado:** relatório curto e correto do incidente — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** registrar só "resolvido" sem anotar que era cache — a causa raiz se perde e o padrão não é reconhecido da próxima vez.
