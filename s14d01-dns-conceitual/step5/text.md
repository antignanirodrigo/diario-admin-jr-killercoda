## Ação: documente o fluxo completo observado.

Por quê: esse resumo é o que você vai usar amanhã, quando o tema for TTL e cache — a base de hoje sustenta o diagnóstico de amanhã.

```bash
# resolvedor: 192.168.10.10 (cache)
# autoritativo: 192.168.10.20 (fonte real)
# A: app.empresa.local → 192.168.10.50 (TTL 300)
# CNAME: www.empresa.local → app.empresa.local
```

**Resultado esperado:** resumo com resolvedor, servidor, tipo de registro e TTL — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** anotar só o IP final sem registrar de onde veio a resposta — sem isso, "o DNS está certo mas não funciona" vai parecer contraditório amanhã.
