## Ação: Crie dois arquivos com uma linha diferente entre eles e compare.

diff é a ferramenta certa pra responder "o que mudou exatamente" sem precisar ler o arquivo inteiro linha por linha procurando a diferença.

```bash
echo "timeout=30" > config.old
echo "timeout=60" > config.new
diff config.old config.new
```

**Resultado esperado:** diff mostra exatamente a linha que difere, com - e + indicando o antes e depois.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `echo "texto" > arquivo` — Cria cada arquivo de teste já com uma linha de conteúdo diferente.
- `diff` — Compara dois arquivos linha a linha e mostra exatamente o que difere entre eles.
- `config.old config.new` — Os dois arquivos comparados: o '-' marca a linha removida, o '+' marca a linha adicionada.
</details>

> **Cilada comum:** ver uma diferença no diff e já querer corrigir/reverter na hora — hoje o objetivo é só identificar e documentar, não decidir se a mudança foi certa.
