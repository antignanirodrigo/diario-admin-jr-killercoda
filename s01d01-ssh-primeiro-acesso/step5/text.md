## Ação: Execute, em sequência, os comandos de inventário desta aula.

esses cinco comandos, nessa ordem, respondem quem você é, onde está, o que já existe ali e o que já estava quebrado antes de você chegar — sem isso não há como provar depois que um problema já existia antes da sua sessão.

```bash
whoami && id
hostnamectl
pwd && ls -lah
df -hT
systemctl --failed
```

**Resultado esperado:** nenhum comando pede sudo nem altera nada — se pedir senha de root, você digitou algo errado.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `whoami` — Mostra só o nome do usuário logado na sessão atual.
- `&&` — Só roda o comando seguinte se o anterior terminar sem erro — encadeia os dois numa linha só.
- `id` — Mostra UID, GID e todos os grupos do usuário — o detalhe que importa: estar no grupo sudo não é a mesma coisa que já ser root.
- `hostnamectl` — Identifica hostname, sistema operacional, versão do kernel e arquitetura da máquina, tudo de uma vez.
- `pwd` — Mostra o caminho completo do diretório em que você está agora.
- `ls -l` — Lista o conteúdo do diretório em formato detalhado: permissões, dono, grupo, tamanho e data.
- `-a` — Inclui também arquivos e pastas ocultos (os que começam com ponto).
- `-h` — Mostra tamanhos em formato legível (K, M, G) em vez do número bruto de bytes.
- `df -h` — Mostra o espaço usado/livre de cada sistema de arquivos montado, em formato legível.
- `-T` — Acrescenta uma coluna extra mostrando o TIPO de cada filesystem (ext4, xfs, tmpfs etc.).
- `systemctl --failed` — Lista só os serviços do systemd que estão em estado de falha — filtra o ruído dos serviços que estão saudáveis.
</details>

> **Cilada comum:** rodar com sudo na frente "só por garantia". Se um comando de leitura pede senha de root, isso não é normal — é sinal de que você entendeu ou digitou algo errado.
