## Ação: Sem create mask definido, crie um arquivo através do Samba e confirme a permissão restritiva. Depois adicione create mask e directory mask ao bloco do compartilhamento e repita o teste.

ver os dois arquivos lado a lado, criados no mesmo compartilhamento antes e depois da mudança, prova visualmente que create mask afeta só criação futura — exatamente o ponto que confunde todo iniciante nesse tema.

```bash
echo teste > /tmp/teste.jpg
smbclient //localhost/uploads -U joao -c "put /tmp/teste.jpg antes.jpg"
ls -l /dados/uploads/antes.jpg
sudo tee -a /etc/samba/smb.conf > /dev/null <<'EOF'
   create mask = 0664
   directory mask = 0775
EOF
sudo testparm -s
sudo systemctl reload smbd
smbclient //localhost/uploads -U joao -c "put /tmp/teste.jpg depois.jpg"
ls -l /dados/uploads/depois.jpg
```

**Resultado esperado:** antes.jpg aparece com permissão -rw------- (só joao acessa). depois.jpg, criado depois do create mask, aparece com -rw-rw-r-- — agora legível por outros.

<details>
<summary>🔍 Detalhar essas opções do smb.conf</summary>

- `create mask = 0664` — Define o teto máximo de permissão Unix aplicado a ARQUIVOS NOVOS criados através deste compartilhamento — 0664 = rw-rw-r-- (dono e grupo leem/escrevem, outros só leem). É um teto: bits além dele nunca são concedidos, mesmo que o cliente peça mais.
- `directory mask = 0775` — Mesma ideia do create mask, mas aplicada a PASTAS novas — 0775 = rwxrwxr-x. Pastas precisam do bit de execução (x) pra serem navegáveis; por isso o valor é diferente do create mask.
</details>

> **Cilada comum:** as linhas create mask/directory mask precisam ficar DENTRO do bloco [uploads], não soltas no fim do arquivo — colar com tee -a sem confirmar a posição pode fazer elas caírem fora do bloco certo se houver outro compartilhamento depois. Confirme com cat /etc/samba/smb.conf antes de recarregar.

> **Se der diferente:** depois.jpg saiu com a mesma permissão de antes.jpg → as linhas provavelmente caíram fora do bloco [uploads]. Edite o arquivo diretamente e confirme com testparm -s -v | grep -A5 uploads que create mask aparece associado ao [uploads] certo. "NT_STATUS_ACCESS_DENIED" ao rodar put → confirme que valid users inclui joao e que a credencial Samba dele já foi cadastrada (Dia 3) com pdbedit -L .
