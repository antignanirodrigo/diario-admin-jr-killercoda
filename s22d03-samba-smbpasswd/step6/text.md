## Ação: Remova a credencial Samba e o usuário Linux de teste, e prove que os dois sumiram.

usuário de teste esquecido em qualquer sistema (Linux ou base Samba) é um achado clássico de auditoria — sobra credencial ativa sem dono claro. Encerrar o ciclo criar → testar → remover é como se pratica sem deixar rastro na VM.

```bash
sudo smbpasswd -x teste-jr
sudo userdel -r teste-jr
pdbedit -L | grep teste-jr || echo "credencial Samba removida"
id teste-jr 2>&1 | grep -i "no such user" && echo "usuário Linux removido"
```

**Resultado esperado:** nenhuma linha do pdbedit menciona mais teste-jr, e o id confirma "no such user" — exatamente o esperado depois da limpeza.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `smbpasswd -x` — Delete: remove um usuário da base de credenciais do Samba, sem tocar na conta Linux dele. Sempre rode antes de remover o usuário Linux com userdel, nunca depois.
</details>

> **Cilada comum:** rodar smbpasswd -x depois de já ter removido o usuário Linux com userdel -r — a ordem certa é remover a credencial Samba PRIMEIRO, depois o usuário Linux (ordem inversa da criação).

> **Se der diferente:** "smbpasswd -x: cannot open passdb" ou erro parecido depois do userdel → você inverteu a ordem — sempre remova a credencial Samba ( smbpasswd -x ) antes do usuário Linux ( userdel ), nunca depois.
