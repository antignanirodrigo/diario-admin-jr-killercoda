## Ação: Crie um cenário real de "processo rodando, porta errada" — sem isso os comandos de hoje não têm nada de anormal pra mostrar.

só criando esse descompasso de propósito você reproduz o sintoma exato do chamado #2302 na sua própria VM, em vez de ler sobre ele.

```bash
sudo tee /etc/systemd/system/app-teste.service >/dev/null <<'EOF'
[Unit]
Description=App de teste (porta errada de proposito)
[Service]
ExecStart=/usr/bin/ncat -l 8081
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl start app-teste.service
systemctl status app-teste.service | grep Active
ss -tulpn | grep 8080
```

**Resultado esperado:** Active: active (running) no systemctl, mas ss -tulpn | grep 8080 não retorna nenhuma linha — o processo está de pé, só que escutando na porta ERRADA (8081, não 8080).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ss` — Substituto moderno do netstat — lista sockets de rede (conexões ativas e portas em escuta).
- `-t` — Mostra sockets TCP.
- `-u` — Mostra também sockets UDP.
- `-l` — Mostra só sockets em modo listen (escutando por conexões), não conexões já estabelecidas.
- `-p` — Mostra o processo (PID e nome) responsável por cada socket — normalmente exige sudo pra ver processos de outros usuários.
- `-n` — Mostra portas e endereços em formato numérico, sem tentar resolver nomes — mais rápido e evita depender do DNS só pra ler o resultado.
</details>

> **Cilada comum:** só em VM descartável — e anote o nome do arquivo de unit ( app-teste.service ), você vai removê-lo no teardown.

> **Se der diferente:** "ncat: command not found" → instale com sudo apt install ncat (do pacote nmap-ncat) ou troque por ExecStart=/usr/bin/nc -l -p 8081 se o seu netcat aceitar a flag -p.
