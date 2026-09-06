## Ação: documente nome da sessão, comando testado, comportamento após detach/attach.

documentar o nome da sessão usada é útil pra próxima vez que você (ou um colega) precisar reconectar numa sessão de manutenção real, meses depois.

```bash
Sessão: teste | Comando: contador em loop
Detach: Ctrl+b d, funcionou
Attach: tmux attach -t teste, retomou exatamente de onde parou
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** esquecer de registrar o nome exato da sessão — sem ele, "tmux attach" sem -t pode falhar ou pegar a sessão errada quando houver mais de uma.
