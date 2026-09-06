## Ação: confirme que nenhum serviço foi reiniciado durante todo o diagnóstico.

Por quê: mtr e traceroute são só leitura — reiniciar algo durante esse diagnóstico não ajuda em nada e pode até mascarar a evidência que você estava coletando.

```bash
# checklist: rota traçada / salto identificado / números anexados / nada reiniciado
```

**Resultado esperado:** checklist completo — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** reiniciar o roteador local "só por garantia" no meio do diagnóstico — isso não muda nada num problema que está no meio do caminho, fora do seu controle.
