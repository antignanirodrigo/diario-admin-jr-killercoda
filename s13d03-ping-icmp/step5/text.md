## Ação: documente os três resultados lado a lado.

Por quê: esse checklist de três linhas é o que evita fechar o próximo chamado com base só num ping.

```bash
# ICMP (ping): OK
# TCP (nc -zv porta 80): OK
# HTTP (curl): OK — HTML recebido
```

**Resultado esperado:** checklist com ICMP, porta e aplicação, todos confirmados — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** anotar só "resolvido" sem registrar qual camada tinha falhado — a causa raiz se perde e o padrão não é reconhecido da próxima vez.
