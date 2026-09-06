## Ação: Crie 3 arquivos de teste com conteúdo diferente, incluindo a palavra ERROR em só um deles.

testar numa pasta pequena e controlada, onde você já sabe a resposta certa, é como confirmar que o comando funciona antes de confiar nele numa investigação real de centenas de arquivos.

```bash
echo "linha normal" > a.log
echo "linha com ERROR aqui" > b.log
echo "outra linha normal" > c.log
```

**Resultado esperado:** 3 arquivos criados, prontos pra busca.

<details>
<summary>🔍 Detalhar esses comandos</summary>

- `echo "texto"` — Imprime o texto entre aspas.
- `> arquivo` — Redireciona a saída do echo para dentro do arquivo indicado, criando-o (ou sobrescrevendo, se já existir).
- `a.log, b.log, c.log` — Três arquivos de teste, só um deles (b.log) contendo a palavra ERROR — o alvo conhecido da busca.
</details>

> **Cilada comum:** pular esse passo e ir direto testar em logs de produção reais — sem saber a resposta esperada de antemão, fica difícil confirmar se o comando funcionou certo.
