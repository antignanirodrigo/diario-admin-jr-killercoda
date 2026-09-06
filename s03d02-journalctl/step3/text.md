## Ação: Acompanhe o log ao vivo numa janela e provoque um evento (restart) noutra.

-f é a ferramenta certa pra validar em tempo real que uma correção funcionou — você vê o evento acontecer, não precisa adivinhar rodando o comando de novo depois.

```bash
journalctl -u ssh -f
sudo systemctl restart ssh
```

**Resultado esperado:** novos logs aparecendo ao vivo na segunda janela conforme o restart acontece.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `journalctl -u ssh -f` — Acompanha ao vivo os novos logs da unidade ssh, assim que são escritos — modo 'follow'.
- `sudo systemctl restart ssh` — Reinicia o serviço ssh na outra janela, gerando eventos novos para observar em tempo real na primeira.
</details>

> **Cilada comum:** deixar o journalctl -f rodando numa sessão e esquecer de encerrar com Ctrl+C — não quebra nada, mas ocupa a sessão à toa.

> **Se der diferente:** a tela fica parada, nenhuma linha nova aparece → isso é esperado se ninguém tentar conectar via SSH nesse meio-tempo — na janela 2, gere um evento de verdade com logger "teste ssh" ou tente uma conexão SSH de propósito para ver o -f funcionando ao vivo.
