## Ação: Prepare o pacote e o diretório de teste, e confirme o serviço NFS de pé — os passos seguintes são sobre ESCREVER e testar linhas de /etc/exports, então essa base não deve tomar tempo da aula.

sem o serviço e o diretório já existindo, você perderia tempo de aula resolvendo pré-requisito em vez de praticar export e permissão, que é o ponto de hoje.

```bash
sudo apt install -y nfs-kernel-server nfs-common
sudo mkdir -p /dados/uploads /mnt/uploads
sudo systemctl enable --now nfs-kernel-server
```

**Resultado esperado:** systemctl status nfs-kernel-server mostra active (running) — o serviço está de pé, pronto pra você escrever a linha de /etc/exports no próximo passo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl enable` — Marca o serviço para iniciar automaticamente em todo boot futuro.
- `--now` — Além de habilitar pro futuro, já inicia o serviço agora, nesta sessão — economiza um segundo comando separado.
- `nfs-kernel-server` — O serviço que efetivamente compartilha os diretórios exportados pela rede.
</details>

> **Cilada comum:** só em VM descartável — e não rode isso numa máquina que já tem um servidor NFS de produção configurado.

> **Se der diferente:** "Failed to enable unit: Unit file nfs-kernel-server.service does not exist" → em algumas distros o serviço se chama nfs-server — tente sudo systemctl enable --now nfs-server .
