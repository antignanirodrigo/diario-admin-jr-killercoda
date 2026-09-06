## Ação: Antes do primeiro passo do laboratório, monte o par servidor+cliente na mesma VM: instale os pacotes, crie o diretório e exporte via loopback.

sem essa infraestrutura mínima, os passos de showmount e mount do laboratório não têm servidor real pra conversar — você precisa do par servidor+cliente de pé antes de observar qualquer comportamento do NFS.

```bash
sudo apt install -y nfs-kernel-server nfs-common
sudo mkdir -p /dados/uploads
echo '/dados/uploads 127.0.0.1(rw,sync,no_subtree_check)' | sudo tee -a /etc/exports
sudo exportfs -ra
exportfs -v
```

**Resultado esperado:** exportfs -v lista /dados/uploads 127.0.0.1(rw,sync,no_subtree_check) — o export existe e está ativo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `/dados/uploads` — O diretório local que está sendo exportado (compartilhado) pela rede.
- `127.0.0.1` — Quem tem permissão de montar esse export — aqui, restrito ao próprio host, só pra teste seguro em VM única.
- `rw` — Permite leitura e escrita a quem montar — sem essa opção, o padrão é somente leitura.
- `sync` — Confirma a escrita no disco antes de responder ao cliente — mais lento, mas evita perda de dado numa queda do servidor.
- `no_subtree_check` — Desativa uma verificação extra de subdiretório que causa mais problemas de compatibilidade do que resolve, recomendação padrão para exports de diretório inteiro.
- `sudo tee -a /etc/exports` — Grava a linha no arquivo de configuração dos exports, sem sobrescrever o que já existia (-a de append).
</details>

> **Cilada comum:** usar 127.0.0.1 como servidor é só um truque de VM única pra estudar sem precisar de duas máquinas — numa rede real, servidor e cliente NFS são hosts diferentes. Só em VM descartável.

> **Se der diferente:** "nfs-kernel-server: not found" → seu gerenciador de pacotes pode ter outro nome — em Fedora/RHEL use sudo dnf install nfs-utils e sudo systemctl enable --now nfs-server . "exportfs: /dados/uploads does not support NFS export" → confirme que o diretório existe antes do export: sudo mkdir -p /dados/uploads .
