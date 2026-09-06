## Ação: dê permissão de execução e compare ./script.sh com bash script.sh.

ver essa diferença lado a lado, com o mesmo arquivo, é a prova mais concreta de que o interpretador realmente muda dependendo de como você chama o script.

```bash
chmod +x teste.sh
./teste.sh
bash teste.sh
```

**Resultado esperado:** ./teste.sh dá erro de sintaxe no [[; bash teste.sh funciona normalmente, exatamente como na história.

> **Cilada comum:** testar só com bash script.sh e nunca perceber o problema — em produção, scripts costumam ser chamados via ./ ou por cron, não sempre com bash explícito.
