## Ação: confirme que a sessão ainda existe, listando todas as sessões ativas.

confirmar com tmux ls antes de reconectar é o que evita anexar na sessão errada quando existe mais de uma ativa — hábito que a Questão 2 vai testar.

```bash
tmux ls
```

**Resultado esperado:** sessão "teste" listada, confirmando que ela sobreviveu ao detach.

> **Cilada comum:** pular esse passo achando "só tem uma sessão mesmo" — em produção, várias pessoas podem ter sessões tmux abertas no mesmo servidor.
