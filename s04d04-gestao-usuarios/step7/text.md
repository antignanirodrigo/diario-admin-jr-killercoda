## Ação: Remova o usuário de teste e os três grupos, deixando o servidor como estava antes da aula.

contas e grupos de teste esquecidos numa VM são exatamente o tipo de achado confuso numa auditoria de segurança meses depois — ninguém lembra por que "grupo1" existe.

```bash
sudo userdel -r teste_user
sudo groupdel grupo1
sudo groupdel grupo2
sudo groupdel grupo3
id teste_user 2>&1 || echo "usuário removido"
```

**Resultado esperado:** mensagem de erro do sistema confirmando que teste_user não existe mais.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `userdel -r` — Remove a conta de usuário e também sua pasta home/mail spool (-r), sem deixar arquivos órfãos.
- `groupdel` — Remove um grupo do sistema — deve ser feito DEPOIS de remover o usuário, nunca antes.
- `id teste_user 2>&1 || echo ...` — Tenta consultar o usuário removido; a falha esperada confirma a remoção completa.
</details>

> **Cilada comum:** rodar groupdel antes do userdel pode falhar se o grupo ainda for o grupo primário de algum usuário — sempre remova o usuário primeiro.

> **Se der diferente:** "userdel: user teste_user is currently used by process" → encerre a sessão dele ou use sudo userdel -rf teste_user (força a remoção — só em VM de teste).
