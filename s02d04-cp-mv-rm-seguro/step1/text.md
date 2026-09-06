## Ação: Crie uma pasta de teste com alguns arquivos dentro.

você precisa de um alvo descartável de verdade pra praticar o ritual completo sem risco — nunca pratique comando destrutivo em algo que importa.

```bash
mkdir teste_cache
touch teste_cache/a.txt teste_cache/b.txt
```

**Resultado esperado:** pasta criada com 2 arquivos, confirmada com ls.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `mkdir` — Cria um novo diretório (pasta).
- `teste_cache` — A pasta de teste, isolada, usada só para este laboratório.
- `touch teste_cache/a.txt teste_cache/b.txt` — Cria dois arquivos vazios dentro da pasta de teste, de uma vez.
</details>

> **Cilada comum:** praticar num diretório que também tem arquivos reais misturados — isole sempre o teste numa pasta própria, vazia antes de começar.
