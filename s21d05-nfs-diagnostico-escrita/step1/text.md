## Ação: Prepare o pacote e o usuário de teste — o ponto da aula é a permissão Unix do DIRETÓRIO, que você mesmo vai criar e quebrar de propósito no passo 1.

ter o usuário de teste já pronto deixa você focado exatamente no que hoje ensina: a diferença entre permissão de export (NFS) e permissão Unix do sistema de arquivos.

```bash
sudo apt install -y nfs-kernel-server nfs-common
sudo useradd -u 5001 -m joao 2>/dev/null || echo "usuario joao ja existe"
sudo mkdir -p /mnt/uploads
id joao
```

**Resultado esperado:** id joao mostra uid=5001(joao) — o usuário de teste está pronto, mesmo que o diretório de export ainda não exista (você cria no passo 1).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `useradd` — Cria uma nova conta de usuário no sistema.
- `-u 5001` — Define explicitamente o UID — não deixa o sistema escolher automaticamente, pois o teste depende desse número específico bater (ou não) com o do lado do servidor NFS.
- `-m` — Cria também o diretório home do usuário.
- `2>/dev/null || echo "..."` — Se o comando falhar (usuário já existe de um teste anterior), descarta o erro técnico e mostra uma mensagem clara em vez de travar o laboratório.
</details>

> **Cilada comum:** só em VM descartável — e se você já rodou o laboratório do Dia 3 nesta mesma VM, o useradd vai avisar que joao já existe; tudo bem, é o mesmo usuário.
