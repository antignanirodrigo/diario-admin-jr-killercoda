## Ação: Acrescente um compartilhamento de teste ao smb.conf, valide a sintaxe, recarregue o serviço e confirme que ele aparece listado.

um compartilhamento só existe de fato pro Windows depois dessas três confirmações em sequência — sintaxe válida, serviço recarregado, e listagem confirmando que o Samba realmente reconhece o novo bloco. Pular qualquer uma dessas etapas é a causa mais comum do chamado "editei mas não aparece".

```bash
sudo mkdir -p /dados/uploads
sudo tee -a /etc/samba/smb.conf > /dev/null <<'EOF'
[uploads]
   path = /dados/uploads
   valid users = joao
   read only = no
   browsable = yes
EOF
sudo testparm -s
sudo systemctl reload smbd
smbclient -L localhost -U joao
```

**Resultado esperado:** testparm confirma "Loaded services file OK", o reload não retorna erro, e o smbclient -L lista "uploads" entre os compartilhamentos disponíveis (depois de pedir a senha do joao).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `smbclient` — Cliente de linha de comando do Samba — navega, lista e transfere arquivos de um compartilhamento SMB sem precisar de uma máquina Windows.
- `-L localhost` — Modo de listagem ("List"): mostra os compartilhamentos disponíveis no host indicado, sem entrar em nenhum deles. Rodar contra localhost testa o próprio servidor.
- `-U joao` — Define o usuário usado na tentativa de autenticação — o comando pede a senha SAMBA (não a Linux) desse usuário.
</details>

> **Cilada comum:** esquecer que valid users = joao exige que joao já tenha uma credencial Samba cadastrada (Dia 3) — sem isso, o smbclient -L vai pedir senha e recusar. Use smbclient -L localhost -N pra listar sem autenticar, só confirmando que o compartilhamento aparece.

> **Se der diferente:** "testparm: command not found" → o pacote samba-common-bin (Debian/Ubuntu) traz o testparm; instale com sudo apt install samba-common-bin . avisos tipo "rlimit_max: increasing rlimit_max" no testparm → são avisos informativos, não erros — o que importa é a linha "Loaded services file OK". Ignore linhas sem a palavra ERROR. smbclient -L pede senha e nenhuma funciona ainda → normal neste ponto — joao ainda não tem credencial Samba (isso é o Dia 3). Use smbclient -L localhost -N pra listar sem autenticar.
