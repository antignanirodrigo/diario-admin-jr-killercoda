## Ação: use o backup que você criou no Dia 4 (ou crie um novo) e simule apagar a pasta de origem original.

reproduzir o incidente de propósito, num ambiente descartável, é o que te deixa pronto pra reagir com calma quando o incidente for real.

```bash
rm -rf ~/lab/origem
ls ~/lab/destino
```

**Resultado esperado:** pasta original removida, backup em ~/lab/destino preservado intacto.

> **Cilada comum:** fazer isso fora de uma VM descartável — nunca simule uma exclusão de "produção" contra dados reais.
