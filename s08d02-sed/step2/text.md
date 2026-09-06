## Ação: rode sed sem -i pra ver a prévia da substituição, sem alterar o arquivo.

essa prévia é exatamente o passo que o colega da história pulou — é ela que revela, antes de qualquer dano, exatamente como o comentário ficaria afetado.

```bash
sed 's/porta_antiga/porta_nova/g' teste.conf
```

**Resultado esperado:** prévia mostrada na tela com todas as ocorrências trocadas, arquivo original ainda intacto no disco.

> **Cilada comum:** ler a prévia rápido demais e não notar que ela afetou uma linha que não devia (como um comentário) — revise linha por linha, não só "parece certo".
