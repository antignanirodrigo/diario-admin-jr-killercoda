## Ação: Do seu PC, conecte via SSH e compare a fingerprint mostrada com a que você anotou no passo anterior.

a pergunta "Are you sure you want to continue connecting?" não é burocracia — é o único momento em que você ainda pode recusar um servidor errado antes dele virar "confiável para sempre" no seu known_hosts .

> **Neste terminal você já está dentro da máquina-alvo** — não existe uma segunda VM pra conectar por SSH aqui. Na VM real, este é o passo em que você faria esse SSH; aqui, é só ler e seguir em frente.

```bash
ssh usuario@IP_DA_VM
```

**Resultado esperado:** se a fingerprint bater, digite yes . Se não bater, pare — não seria seguro em ambiente real.

<details>
<summary>🔍 Detalhar essa sintaxe</summary>

- `ssh` — Cliente SSH — inicia uma conexão remota criptografada com outro host.
- `usuario` — Nome da conta no servidor remoto com a qual você quer autenticar.
- `@` — Separador entre usuário e destino — tudo antes é a conta, tudo depois é o host.
- `IP_DA_VM` — Endereço IP (ou hostname) do servidor de destino — aqui é um placeholder a substituir pelo IP real da sua VM.
</details>

> **Cilada comum:** digitar yes de reflexo, só porque o prompt parece familiar, sem de fato comparar o valor com o que você anotou. Isso anula toda a proteção do Passo 2.
