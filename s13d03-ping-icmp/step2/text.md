## Ação: pare um serviço web (se houver) e teste a porta específica.

Por quê: nc testa especificamente a camada de transporte — a porta aceita conexão ou não, independente do host responder a ping.

```bash
systemctl stop nginx
nc -zv 127.0.0.1 80
```

**Resultado esperado:** connection refused ou timed out, dependendo do estado do firewall.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl stop nginx` — Para o serviço nginx de propósito, reproduzindo o cenário em que a aplicação está fora do ar (mas a rede continua saudável).
- `nc` — Netcat — ferramenta de rede genérica usada aqui só pra testar se uma porta TCP aceita conexão, sem precisar de um cliente HTTP completo.
- `-z` — Modo zero-I/O : só testa se a conexão abre, sem enviar ou receber dados — ideal pra checagem rápida de porta.
- `-v` — Modo verboso: mostra na tela se a conexão teve sucesso, foi recusada ou expirou, em vez de ficar silencioso.
</details>

> **Cilada comum:** confundir "connection refused" (host respondeu, ninguém escutando) com "timeout" (sem resposta nenhuma, possível firewall) — são causas diferentes.

> **Se der diferente:** "nc: command not found" → instale com sudo apt install netcat-openbsd (Debian/Ubuntu) ou use curl --connect-timeout 3 telnet://127.0.0.1:80 como alternativa. "Unit nginx.service not loaded" → o nginx não está instalado nessa VM. Instale com sudo apt install nginx ou adapte o exercício pro serviço web que você tiver disponível.
