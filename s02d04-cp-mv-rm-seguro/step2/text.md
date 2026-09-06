## Ação: Confirme onde está e o que existe ali, como ritual, antes de qualquer ação.

esse é o passo que a história de hoje mostrou que quase falhou — confirmar ANTES é o que evita usar caminho relativo apontando pro lugar errado.

```bash
pwd
ls -la
```

**Resultado esperado:** caminho absoluto confirmado, conteúdo da pasta visível.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `pwd` — Mostra o caminho absoluto completo do diretório atual — o ritual de confirmar ANTES de qualquer ação destrutiva.
- `ls -la` — Lista todo o conteúdo da pasta, incluindo ocultos, em formato detalhado.
</details>

> **Cilada comum:** rodar pwd uma vez no início da sessão e confiar nesse resultado horas depois — confirme de novo, sempre, logo antes do comando destrutivo, não só no começo do dia.
