## Ação: Apague os logs de teste que você criou — eles não podem ficar confundindo buscas futuras nesta pasta.

um log de teste esquecido na pasta de trabalho confunde o próximo grep ou find que alguém rodar ali: "esse ERROR aqui é real ou é sobra de aula antiga?" é exatamente a dúvida que se evita limpando.

```bash
rm a.log b.log c.log
ls *.log 2>&1 || echo "logs de teste removidos"
```

**Resultado esperado:** mensagem de erro do ls confirmando que não sobrou nenhum .log na pasta — sinal de limpeza completa.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `rm a.log b.log c.log` — Remove os três arquivos de teste criados no início da aula.
- `ls *.log 2>&1 || echo ...` — Tenta listar qualquer .log restante; como isso falha (não sobrou nenhum), o '||' confirma a limpeza.
</details>

> **Cilada comum:** esquecer que o find . -name "*.log" -mtime -1 do passo anterior vai continuar encontrando esses arquivos até você de fato removê-los.
