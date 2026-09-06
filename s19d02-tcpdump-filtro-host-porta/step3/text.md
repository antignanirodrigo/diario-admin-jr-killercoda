## Ação: Combine host e port com and, testando contra uma porta específica de serviço ativo na VM.

```bash
sudo tcpdump -i eth0 -n host 10.10.10.50 and port 80
```

**Resultado esperado:** apenas o tráfego que bate nos dois critérios simultaneamente.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `host 10.10.10.50` — Mostra pacotes onde esse IP aparece como origem OU destino — qualquer papel.
- `and` — Operador lógico E: só mostra o pacote se ELE bater nos dois critérios ao mesmo tempo — interseção exata, não união.
- `port 80` — Mostra pacotes usando essa porta, também como origem ou destino, em qualquer host.
</details>

> **Se der diferente:** Nenhum pacote aparece, mesmo com o host certo → confirme que existe algum serviço realmente escutando na porta 80 dessa VM com sudo ss -tulnp | grep :80 . Sem serviço ativo na porta, não há tráfego pra capturar ali — troque pra uma porta que tenha algo escutando.
