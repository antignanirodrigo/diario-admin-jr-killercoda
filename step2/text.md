## Ação: crie um usuário de teste e troque o dono do arquivo

`chown` resolve QUEM é dono — é sempre o primeiro passo antes de decidir quanto de permissão dar. Aplicar `chmod` antes de corrigir o dono pode acabar dando a permissão certa pro dono errado, sem perceber.

```bash
sudo useradd testeapp
sudo chown testeapp:testeapp teste.log
ls -l teste.log
```

**Resultado esperado:** `ls -l` mostra `testeapp` como novo dono do arquivo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — trocar o dono de um arquivo exige privilégio elevado.
- `chown testeapp:testeapp` — formato usuário:grupo, define o novo dono e o novo grupo dono numa única chamada.
</details>

> **Se der `chown: invalid user: 'testeapp:testeapp'`:** o usuário ainda não existe. Volte e rode `sudo useradd testeapp` antes deste comando.
