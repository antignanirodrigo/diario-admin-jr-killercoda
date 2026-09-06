## Ação: documente a conclusão comparando os dois casos testados.

Por quê: registrar os dois cenários lado a lado é o que você vai consultar da próxima vez que dois IPs "parecerem" da mesma rede.

```bash
# caso 1: 192.168.10.15/24 + 192.168.10.40/24 → mesma rede → ping OK
# caso 2: 192.168.10.15/24 + 192.168.20.30/24 → redes diferentes → precisa de roteador
```

**Resultado esperado:** anotação clara distinguindo os dois casos — reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** anotar só a conclusão ("são redes diferentes") sem o cálculo — sem o raciocínio registrado, você vai precisar refazer tudo da próxima vez.
