## Ação: Rode cat /etc/os-release e compare com o que uname -a mostrou.

distribuições diferentes podem rodar exatamente a mesma versão de kernel — se você precisa saber a distro de verdade (pra escolher o comando certo de pacote, por exemplo), o kernel sozinho não serve.

```bash
cat /etc/os-release
```

**Resultado esperado:** os-release mostra o nome da distribuição (ex: Ubuntu 22.04); uname -a não mostra isso, só o kernel.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `cat` — Mostra o conteúdo de um arquivo de texto direto na tela, do início ao fim.
- `/etc/os-release` — Arquivo padrão (systemd) com metadados da distribuição: nome, versão, ID e URL de suporte — é a fonte confiável para saber a distro, diferente do kernel.
</details>

> **Cilada comum:** concluir a distribuição só pelo número do kernel em uname -a — foi exatamente esse o erro do caso real que contei na história de hoje.
