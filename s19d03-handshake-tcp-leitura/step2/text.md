## Ação: Tente conectar numa porta fechada da mesma VM e capture o resultado.

```bash
sudo tcpdump -i eth0 -n port 9999
curl http://localhost:9999
```

**Resultado esperado:** ou nenhuma resposta (retransmissão de SYN), ou um pacote com flag RST recusando a conexão.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo tcpdump -i eth0 -n port 9999` — Captura na interface eth0, filtrando só tráfego envolvendo a porta 9999 (origem ou destino), sem resolver nomes.
- `curl http://localhost:9999` — Gera uma tentativa de conexão a essa porta, no próprio host, pra observar como o tcpdump captura (ou não) o handshake dessa tentativa contra uma porta fechada.
</details>

> **Se der diferente:** Aparece "Connection refused" no curl, mas nenhum pacote RST aparece na captura filtrando -i eth0 → clássico: tráfego pra localhost não passa pela interface eth0 , passa pela interface de loopback lo . Refaça a captura com -i lo em vez de -i eth0 pra testes que usam localhost — esse é um dos erros mais comuns de quem está começando com tcpdump.
