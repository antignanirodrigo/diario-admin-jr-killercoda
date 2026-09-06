## Ação: Reexecute os mesmos comandos do Passo 4 e confirme que nenhum pacote, arquivo de configuração ou serviço foi alterado.

esse é o teste que prova, e não só afirma, que sua sessão foi realmente somente-leitura — sem essa reexecução, "não mudei nada" é uma alegação, não uma evidência.

```bash
whoami && id
hostnamectl
pwd && ls -lah
df -hT
systemctl --failed
```

**Resultado esperado:** rodando os mesmos comandos de novo, a saída é idêntica à primeira vez.

<details>
<summary>🔍 Detalhar cada comando desse bloco (reexecução)</summary>

- `whoami` — Mostra só o nome do usuário logado na sessão atual.
- `&&` — Só roda o comando seguinte se o anterior terminar sem erro — encadeia os dois numa linha só.
- `id` — Mostra UID, GID e todos os grupos do usuário.
- `hostnamectl` — Identifica hostname, sistema operacional, versão do kernel e arquitetura da máquina.
- `pwd` — Mostra o caminho completo do diretório em que você está agora.
- `ls -l` — Lista o conteúdo do diretório em formato detalhado: permissões, dono, grupo, tamanho e data.
- `-a` — Inclui também arquivos e pastas ocultos (os que começam com ponto).
- `-h` — Mostra tamanhos em formato legível (K, M, G) em vez do número bruto de bytes.
- `df -h` — Mostra o espaço usado/livre de cada sistema de arquivos montado, em formato legível.
- `-T` — Acrescenta uma coluna extra mostrando o TIPO de cada filesystem (ext4, xfs, tmpfs etc.).
- `systemctl --failed` — Lista só os serviços do systemd que estão em estado de falha.
</details>

> **Cilada comum:** pular esse passo por parecer redundante — é justamente a redundância que vira prova em caso de auditoria ou incidente futuro.
