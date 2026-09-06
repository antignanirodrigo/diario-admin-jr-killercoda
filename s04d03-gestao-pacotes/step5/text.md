## Ação: Documente pacote pedido, versão instalada, dependências, e confirmação de escopo.

documentar o escopo explicitamente ("resto do sistema intocado") é o que prova, não só afirma, que a instalação foi feita com o cuidado certo.

```bash
# não é comando de shell — é o registro final
# ex: "Pacote: htop. Versão: 3.2.2-2ubuntu2. Dependências: libnl-3-200 e outras 2. Escopo: só o pedido, resto do sistema intocado."
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "instalei o htop" sem mencionar a verificação de escopo — sem isso, quem revisar depois não sabe se você confundiu install com upgrade ou não.
