## Ação: Restaure o /etc/fstab ao estado original e remova o export e os diretórios de teste.

um /etc/fstab com lixo de laboratório só dói no PRÓXIMO reboot, semanas depois — desfazer agora, com a shell ainda disponível, é bem mais barato que descobrir isso numa manutenção real.

```bash
sudo umount /mnt/uploads
sudo sed -i '/uploads/d' /etc/fstab
sudo sed -i '/uploads/d' /etc/exports
sudo exportfs -ra
sudo rm -rf /dados/uploads /mnt/uploads
grep uploads /etc/fstab || echo "fstab limpo"
```

**Resultado esperado:** a mensagem "fstab limpo" confirma que nenhuma linha de teste sobrou no arquivo que controla o boot da sua VM.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sed -i` — Edita o arquivo diretamente (in-place), sem precisar abrir um editor.
- `'/uploads/d'` — Padrão de endereço + comando: qualquer linha que contenha "uploads" (o padrão) é deletada (o 'd' no final).
- `/etc/fstab` — O arquivo de montagens automáticas do boot — remover a linha aqui evita que o próximo boot tente montar um recurso que já foi desfeito.
</details>

> **Cilada comum:** rodar o sed no fstab sem antes desmontar pode deixar o systemd tentando gerenciar um mount cuja linha correspondente já sumiu — sempre desmonte primeiro.
