## Ação: Bloqueie temporariamente a porta no servidor (com um firewall simples de teste) e repita a captura dupla.

```bash
sudo iptables -A INPUT -p tcp --dport 8080 -j DROP
```

**Resultado esperado:** SYN aparecendo na captura do cliente, mas ausente na captura do servidor.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo iptables -A INPUT` — Acrescenta (Append) uma nova regra à cadeia INPUT — as regras que decidem o que fazer com pacotes chegando NESSA máquina.
- `-p tcp --dport 8080` — Restringe a regra a pacotes TCP com porta de destino 8080 — só esse tráfego específico é afetado.
- `-j DROP` — Define a ação (jump/target): descartar o pacote silenciosamente, sem avisar quem enviou. É por isso que o cliente vê o SYN saindo mas nunca recebe resposta nenhuma — nem um RST, só silêncio.
</details>
