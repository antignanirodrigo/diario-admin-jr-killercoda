## Ação: dentro da sessão, rode um comando de teste com progresso visível e desanexe sem encerrar.

esse é o "sair da sala e apagar a luz" — sentir na prática que desanexar não é o mesmo que encerrar é o que fixa a diferença central do tmux.

```bash
for i in $(seq 1 60); do echo "contador: $i"; sleep 5; done
```

**Resultado esperado:** voltou pro terminal normal (fora do tmux), mensagem "[detached from teste]", sessão continua rodando em background.

> **Cilada comum:** pressionar Ctrl+d em vez de Ctrl+b d — Ctrl+d sozinho pode fechar a sessão inteira, não apenas desanexar.
