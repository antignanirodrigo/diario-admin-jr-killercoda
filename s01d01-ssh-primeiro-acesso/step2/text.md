## Ação: Crie uma VM Linux descartável (Ubuntu Server, por exemplo) e, na tela do instalador, marque explicitamente a opção de instalar o OpenSSH Server.

você precisa de um alvo real pra praticar sem risco de derrubar produção — "descartável" quer dizer que pode quebrar à vontade, você reinstala.

```bash
systemctl status ssh
```

**Resultado esperado:** a VM reinicia e mostra um prompt de login local. O systemctl status ssh retorna active (running) .

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl` — Ferramenta de controle do systemd — aqui usada só para CONSULTAR o estado de um serviço, sem alterar nada.
- `status` — Subcomando que mostra o estado atual do serviço: ativo/inativo/falho, PID, e as últimas linhas de log.
- `ssh` — Nome da unidade systemd do servidor OpenSSH (sshd) — em Debian/Ubuntu o nome mais comum da unidade é 'ssh'.
</details>

> **Cilada comum:** esquecer de marcar a instalação do OpenSSH Server na tela do instalador. A VM sobe normalmente, mas sem sshd — no Passo 2 você vai achar que o problema é de rede, quando na real o serviço nunca existiu.
