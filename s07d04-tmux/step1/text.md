## Ação: instale o tmux se necessário e crie uma sessão nomeada.

um nome descritivo (não "session1") é o que facilita identificar a sessão certa quando houver várias abertas ao mesmo tempo.

```bash
sudo apt install tmux -y
tmux new -s teste
```

**Resultado esperado:** sessão tmux criada e ativa, prompt agora dentro do tmux.

> **Cilada comum:** criar sessões sem nome (tmux new sem -s) — elas recebem números genéricos, difíceis de identificar depois.
