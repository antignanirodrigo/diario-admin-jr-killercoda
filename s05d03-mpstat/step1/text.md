## Ação: Confirme quantos núcleos a VM tem e o uso individual de cada um.

conhecer a topologia de núcleos da sua VM é o pré-requisito pra qualquer diagnóstico por núcleo — sem saber quantos existem, você não consegue interpretar o padrão.

```bash
mpstat -P ALL 2
```

**Resultado esperado:** lista de núcleos com uso individual mostrado.

> **Cilada comum:** olhar só a linha "all" (média) e ignorar as linhas individuais — é exatamente essa linha que esconde o problema, como a história de hoje mostrou.
