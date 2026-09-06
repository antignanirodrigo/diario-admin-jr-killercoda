## Ação: Sem duas VMs disponíveis, reproduza o EFEITO do descompasso de UID diretamente: atribua a um arquivo um UID que não existe como usuário local — é exatamente o que um servidor real veria vindo de um cliente com identidade diferente.

reproduzir com duas VMs de verdade é o ideal se você tiver — mas o efeito central (UID sem nome correspondente) é o mesmo que aconteceria com um cliente NFS real usando uma identidade que o servidor não conhece. Isso te dá o sintoma sem exigir infraestrutura extra.

```bash
sudo mkdir -p /dados/uploads
sudo touch /dados/uploads/arquivo.txt
sudo chown 9999:9999 /dados/uploads/arquivo.txt
ls -l /dados/uploads/arquivo.txt
ls -n /dados/uploads/arquivo.txt
```

**Resultado esperado:** ls -l mostra o dono como um número puro (9999), sem nome — porque não existe usuário local com esse UID. ls -n mostra o mesmo número, e é o comando certo pra esse tipo de investigação, porque nunca tenta traduzir.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `chown` — Altera o dono e grupo de um arquivo ou diretório.
- `9999:9999` — Aqui usado como NÚMERO puro (UID:GID), não nome de usuário — de propósito, pra simular um UID que não existe localmente, do jeito que o NFS realmente transmite identidade pela rede.
- `/dados/uploads/arquivo.txt` — O arquivo de teste usado para observar como esse UID aparece do lado do cliente NFS.
- `ls -n` — No mesmo passo, mostra o UID/GID em número puro (sem resolver pra nome) — é assim que você confirma exatamente o que o NFS está transmitindo de verdade.
</details>

> **Cilada comum:** 9999 aqui é só um número de exemplo sem usuário correspondente, de propósito — se sua VM por acaso já tiver um UID 9999 cadastrado, troque por um número mais alto e incomum, tipo 59999.

> **Se der diferente:** ls -n mostra outro número que não 9999 → confira se o chown realmente aplicou: rode stat -c '%u:%g' /dados/uploads/arquivo.txt pra confirmar o UID/GID gravado no arquivo.
