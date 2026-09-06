## Ação: Desmonte, remova o export e apague o diretório de teste — devolve a VM ao estado anterior à aula.

fecha o ciclo criar → observar → desfazer: o único diretório e export tocados hoje foram os que você mesmo criou pra estudar — nenhuma configuração real do servidor sobrou pra trás.

```bash
sudo umount /mnt/uploads
sudo sed -i '/uploads/d' /etc/exports
sudo exportfs -ra
exportfs -v
sudo rm -rf /dados/uploads /mnt/uploads
```

**Resultado esperado:** exportfs -v não lista mais nada relacionado a /dados/uploads, e as duas pastas de teste não existem mais.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `exportfs` — Aplica (ou remove) exports NFS sem precisar reiniciar o serviço inteiro.
- `-r` — Re-exporta tudo que está em /etc/exports, sincronizando com o estado atual do arquivo.
- `-a` — Aplica a todos os exports do arquivo, não só um específico.
</details>

> **Cilada comum:** esquecer de remover a linha do /etc/exports antes de rodar exportfs -ra de novo depois — export fantasma confunde investigação futura.

> **Se der diferente:** "umount: /mnt/uploads: not mounted" → normal se você pulou o passo de montagem — ignore e siga pra remoção do export.
