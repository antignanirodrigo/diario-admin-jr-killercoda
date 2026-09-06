## Ação: Pelo console local da VM (não pelo SSH ainda — de propósito, você ainda não confia nela), leia a fingerprint que o próprio servidor guarda de si mesmo.

esse é o valor de referência pra comparar no Passo 3. Pular isso e confiar direto na primeira conexão SSH derruba a única defesa real contra servidor errado ou ataque de intermediário.

```bash
ssh-keygen -lf /etc/ssh/ssh_host_ed25519_key.pub
```

**Resultado esperado:** uma linha tipo 256 SHA256:xxxxx... (ED25519) . Anote esse valor — é o que você vai comparar no próximo passo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ssh-keygen` — Utilitário de geração e inspeção de chaves SSH — aqui não está gerando nada novo, só lendo uma chave já existente.
- `-l` — Mostra a fingerprint (impressão digital) da chave, em vez do conteúdo bruto — um resumo curto e comparável.
- `-f` — Indica que o próximo argumento é o caminho do arquivo de chave a inspecionar, não uma opção.
- `/etc/ssh/ssh_host_ed25519_key.pub` — A chave pública do HOST (do servidor), gerada na instalação — é ela que identifica a máquina, não o seu usuário.
</details>

> **Cilada comum:** ler a fingerprint só DEPOIS de já ter digitado yes no aviso do SSH. Nesse ponto você já aceitou sem checar — a ordem dos passos é o que garante a proteção, não o comando em si.
