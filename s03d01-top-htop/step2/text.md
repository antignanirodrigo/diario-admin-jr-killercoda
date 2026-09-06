## Ação: Instale e abra o htop, se ainda não tiver.

htop dá visão por núcleo e ordenação interativa que o top não tem de forma tão prática — é a ferramenta certa quando você já sabe que precisa investigar mais fundo.

```bash
sudo apt install htop
htop
```

**Resultado esperado:** interface interativa do htop carregada, com barras coloridas de CPU/memória.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo apt install htop` — Instala o pacote htop usando o gerenciador de pacotes do sistema.
- `htop` — Abre a interface interativa do htop, com barras coloridas de uso por núcleo de CPU e memória.
</details>

> **Cilada comum:** instalar htop numa sessão de produção sem confirmar antes que instalar pacotes ali é permitido — em ambiente real, confirme a política do time primeiro.

> **Se der diferente:** "E: Unable to locate package htop" (não é Debian/Ubuntu) → use o gerenciador da sua distro: sudo dnf install htop (RHEL/Fedora) ou sudo yum install htop (CentOS antigo).
