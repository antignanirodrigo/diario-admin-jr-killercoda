## Ação: Remova o export e o diretório de teste, e confirme que a máquina não ficou com nenhuma linha de exports de laboratório esquecida.

um export de teste esquecido com rede/IP mal pensado é exatamente o tipo de configuração que gera um chamado como o #2102 de verdade — desfazer o laboratório evita deixar pra trás o próprio erro que você acabou de estudar.

```bash
sudo umount /mnt/uploads
sudo sed -i '/uploads/d' /etc/exports
sudo exportfs -ra
exportfs -v
sudo rm -rf /dados/uploads /mnt/uploads
```

**Resultado esperado:** exportfs -v sem nenhuma linha de /dados/uploads, e os diretórios de teste removidos.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `umount /mnt/uploads` — Desmonta o compartilhamento NFS antes de qualquer outra limpeza — evita erros de 'device busy' nos passos seguintes.
- `sed -i '/uploads/d' /etc/exports` — Edita o arquivo de exports diretamente (in-place, -i), deletando (d) qualquer linha que contenha a palavra 'uploads'.
- `exportfs -ra` — Reaplica (-r, reexport) todos (-a, all) os exports a partir do arquivo já editado, sem precisar reiniciar o serviço NFS.
- `exportfs -v` — Lista (verbose) os exports atualmente ativos, pra confirmar visualmente que a linha de teste sumiu.
- `rm -rf /dados/uploads /mnt/uploads` — Remove recursivamente e sem confirmação os diretórios de teste usados na aula.
</details>

> **Cilada comum:** o umount pode reclamar "not mounted" se algum dos seus testes não chegou a montar — normal, ignore e siga pra remoção do export.
