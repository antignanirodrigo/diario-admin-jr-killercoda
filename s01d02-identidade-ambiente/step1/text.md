## Ação: Crie um usuário de teste para comparar identidades lado a lado — é vendo a diferença que o conceito de UID/GID gruda.

"Permission denied" quase nunca é sobre o comando — é sobre quem executou. Comparar duas identidades na mesma máquina mostra, em uma tela, por que o mesmo script tem dois destinos diferentes.

```bash
sudo useradd -m teste-jr
id                       # a SUA identidade
id teste-jr              # a identidade dele
groups teste-jr          # em que grupos ele entrou
```

**Resultado esperado:** dois blocos com uid= , gid= e groups= claramente diferentes. Você provavelmente está em grupos como sudo ou adm ; o teste-jr não está em nenhum deles.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Executa o comando com privilégios de root — criar um usuário é uma mudança de sistema, exige privilégio elevado.
- `useradd` — Cria uma nova conta de usuário no sistema.
- `-m` — Cria também a pasta pessoal (home) do novo usuário — sem essa flag, o usuário existe mas não tem pasta própria.
- `teste-jr` — O nome da conta a ser criada.
</details>

> **Cilada comum:** criar usuário em servidor de produção "só pra testar". Só em VM descartável — e anote o nome, você vai removê-lo no último passo.

> **Se der diferente:** "useradd: command not found" → use sudo adduser --disabled-password --gecos '' teste-jr (mais comum em Debian/Ubuntu). "id: teste-jr: no such user" → o useradd falhou silenciosamente. Rode de novo observando a saída, ou confirme com grep teste-jr /etc/passwd . Os UIDs são muito parecidos (ex: 1000 e 1001) → normal — o que importa não é o número, é a lista de grupos . É ali que mora a diferença de poder entre as duas contas.
