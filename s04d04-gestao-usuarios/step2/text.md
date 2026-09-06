## Ação: Crie um usuário de teste com home e shell corretos, e defina uma senha.

-m garante o diretório home, -s define o shell certo — sem esses dois, o usuário pode não conseguir logar direito ou cair num shell errado.

```bash
sudo useradd -m -s /bin/bash teste_user
sudo passwd teste_user
```

**Resultado esperado:** conta criada com home próprio, senha definida com sucesso.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `useradd` — Cria uma nova conta de usuário.
- `-m` — Cria também o diretório home do usuário (ex: /home/teste_user) — sem essa flag, a home não é criada.
- `-s /bin/bash` — Define o shell de login do usuário como bash.
- `passwd teste_user` — Define (ou altera) a senha da conta indicada.
</details>

> **Cilada comum:** esquecer o passwd depois do useradd — a conta existe mas fica sem senha, incapaz de autenticar.
