## Ação: Desmonte, remova export, usuário e diretórios de teste — fecha a Semana 21 sem deixar rastro na VM.

fecha a semana com a mesma disciplina do Dia 1: todo usuário, export e diretório tocados nesses cinco dias foram criados por você, pro seu próprio aprendizado, e saem exatamente como entraram.

```bash
sudo umount /mnt/uploads
sudo sed -i '/uploads/d' /etc/exports
sudo exportfs -ra
sudo userdel -r joao
sudo rm -rf /dados/uploads /mnt/uploads
```

**Resultado esperado:** id joao retorna "no such user", e exportfs -v não lista mais /dados/uploads.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `umount /mnt/uploads` — Desmonta o compartilhamento antes de qualquer outra limpeza.
- `sed -i '/uploads/d' /etc/exports` — Remove a linha de export de teste do arquivo, editando-o diretamente (in-place).
- `exportfs -ra` — Reaplica os exports, refletindo a remoção da linha.
- `userdel -r joao` — Remove a conta de usuário de teste e, com -r, também seu diretório home.
- `rm -rf /dados/uploads /mnt/uploads` — Remove os diretórios de teste usados durante a semana.
</details>

> **Cilada comum:** rodar userdel antes do umount pode deixar o ponto de montagem preso a um usuário que já não existe mais — sempre desmonte primeiro.

> **Se der diferente:** "umount: /mnt/uploads: not mounted" → normal se seu teste específico não chegou a montar — ignore e siga pra remoção do usuário e do export.
