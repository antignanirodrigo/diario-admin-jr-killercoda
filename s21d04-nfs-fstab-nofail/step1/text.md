## Ação: Prepare o export do lado servidor antes do laboratório — hoje o risco é especificamente sobre a linha do /etc/fstab, não sobre criar o export de novo.

pra isolar o aprendizado de hoje (_netdev e nofail), o export do lado servidor já vem pronto, sem exigir que você repita o que já viu nos Dias 1 e 2.

```bash
sudo apt install -y nfs-kernel-server nfs-common
sudo mkdir -p /dados/uploads /mnt/uploads
echo '/dados/uploads 127.0.0.1(rw,sync,no_subtree_check)' | sudo tee -a /etc/exports
sudo exportfs -ra
exportfs -v
```

**Resultado esperado:** exportfs -v mostra /dados/uploads liberado pra 127.0.0.1 — o export já existe, pronto pra você escrever a linha de fstab no próximo passo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `apt install -y nfs-kernel-server nfs-common` — Instala os pacotes do servidor NFS e das ferramentas de cliente, sem pedir confirmação (-y).
- `mkdir -p /dados/uploads /mnt/uploads` — Cria os diretórios de origem (a exportar) e de destino (ponto de montagem), incluindo pastas pai que faltarem (-p).
- `echo '...' | sudo tee -a /etc/exports` — Acrescenta (tee -a, append) essa linha ao final do arquivo — tee é necessário aqui porque um simples '>>' com sudo não funciona pra redirecionar pra um arquivo que o usuário comum não pode escrever diretamente.
- `exportfs -ra` — Reaplica as configurações de export a partir do arquivo /etc/exports.
- `exportfs -v` — Lista os exports ativos, pra confirmar que a linha foi aplicada corretamente.
</details>

> **Cilada comum:** só em VM descartável — editar fstab errado pode travar boots futuros até você corrigir manualmente numa shell de emergência.

> **Se der diferente:** "exportfs: /dados/uploads does not support NFS export" → confirme que o diretório existe: sudo mkdir -p /dados/uploads .
