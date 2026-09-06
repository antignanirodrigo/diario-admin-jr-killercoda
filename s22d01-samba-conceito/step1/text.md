## Ação: Instale o Samba na VM de laboratório e confirme que os dois serviços essenciais (smbd e nmbd) subiram, além da porta SMB escutando.

sem confirmar que os dois serviços realmente subiram e a porta está escutando, qualquer teste de acesso do Windows depois vira suposição — você precisa da evidência de que o servidor está pronto pra receber conexão SMB antes de ir pro cliente.

```bash
sudo apt update && sudo apt install -y samba
sudo systemctl status smbd nmbd --no-pager
ss -tlnp | grep -E ':445|:139'
```

**Resultado esperado:** smbd e nmbd aparecem como "active (running)", e a porta 445 (e geralmente a 139) aparecem em LISTEN na saída do ss.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ss` — Substituto moderno do netstat — lista sockets de rede ativos no sistema.
- `-t` — Mostra apenas conexões TCP (o protocolo usado por SMB).
- `-l` — Mostra apenas sockets em modo LISTEN — portas esperando conexão, não conexões já estabelecidas.
- `-n` — Mostra endereços e portas em formato numérico, sem tentar resolver nomes — mais rápido e sem depender de DNS.
- `-p` — Mostra o processo (PID e nome) dono de cada socket — exige sudo pra aparecer completo.
- `grep -E ':445|:139'` — Filtra a saída só pelas linhas que mencionam a porta 445 (SMB moderno) ou 139 (NetBIOS/SMB legado) — as duas portas que o Samba pode usar.
</details>

> **Cilada comum:** instalar isso em servidor de produção só pra testar. Só em VM descartável — e confirme que não há firewall bloqueando a porta 445 na rede do laboratório.

> **Se der diferente:** "Unable to locate package samba" → atualize a lista de pacotes primeiro com sudo apt update , ou confirme que o repositório universe está habilitado (Ubuntu): sudo add-apt-repository universe . nmbd aparece como "inactive" ou "failed" → distros recentes às vezes desabilitam nmbd por padrão (NetBIOS é menos necessário com DNS moderno). Ative com sudo systemctl enable --now nmbd . Sem ele, a resolução de nome NetBIOS pode falhar, mas acesso via IP direto no Windows ainda funciona. a porta 445 não aparece no ss → confirme que smbd realmente está "active (running)" primeiro — se o serviço caiu, rode sudo journalctl -u smbd -n 30 pra ver o motivo antes de tentar de novo.
