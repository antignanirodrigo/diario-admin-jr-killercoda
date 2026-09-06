## Ação: Crie um usuário Linux de teste isolado e tente cadastrar a credencial Samba dele ANTES e DEPOIS de ele existir no sistema — é assim que o erro de ordem fica visível.

ver o comando falhar por causa da ordem errada, e depois funcionar corretamente, grava o motivo melhor do que só ler sobre ele — smbpasswd -a nunca cria conta Linux, só adiciona credencial pra uma que já existe.

```bash
sudo smbpasswd -a teste-jr          # tentativa 1: ainda NÃO existe no Linux
sudo useradd -m teste-jr
sudo smbpasswd -a teste-jr          # tentativa 2: agora existe
pdbedit -L | grep teste-jr
```

**Resultado esperado:** a tentativa 1 falha com um erro indicando que o usuário não existe no sistema. A tentativa 2, depois do useradd, pede e cadastra a senha SMB com sucesso, e teste-jr aparece na saída do pdbedit -L.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `smbpasswd` — Ferramenta de gerenciamento da base de credenciais do Samba — separada da base de senhas do Linux.
- `-a` — Add: adiciona um usuário à base de credenciais Samba, pedindo uma senha específica pra ele. Exige que o usuário já exista como conta Linux — não cria conta nova.
</details>

> **Cilada comum:** criar esse usuário em servidor de produção. Só em VM descartável — anote o nome teste-jr, você vai removê-lo no último passo.

> **Se der diferente:** a tentativa 1 não deu nenhum erro visível → confira a versão com smbpasswd -V ; em algumas versões o erro aparece só no log — rode sudo journalctl -u smbd -n 10 depois da tentativa. "useradd: user 'teste-jr' already exists" → alguém (ou uma aula anterior) já criou esse usuário nesta VM. Use outro nome, ex: teste-jr2 , ou remova o antigo primeiro com sudo userdel -r teste-jr .
