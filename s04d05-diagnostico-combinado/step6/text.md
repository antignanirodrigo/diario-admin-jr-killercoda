## Ação: Encerre o processo de carga sintética que você criou para o exercício, deixando o servidor limpo.

esse processo foi criado só pra você ter algo pra cruzar com o last -a no exercício — sem encerrar, ele fica consumindo CPU de verdade muito depois da aula ter acabado.

```bash
kill %1
top -bn1 | head -5
```

**Resultado esperado:** o processo yes não aparece mais na lista de carga do top.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `top` — Normalmente roda em modo interativo, atualizando a tela ao vivo.
- `-b` — Modo batch: imprime a saída como texto simples, sem interface interativa — necessário para poder usar com pipe.
- `-n1` — Limita a UMA única atualização/captura, em vez de rodar continuamente.
- `| head -5` — Mostra só as 5 primeiras linhas dessa captura única — o cabeçalho com os processos de maior consumo.
</details>

> **Cilada comum:** no dia da revisão geral é fácil esquecer esse detalhe, já que a atenção está nos exercícios mentais de correlação, não nos comandos de shell.

> **Se der diferente:** "bash: kill: %1: no such job" → use pkill yes para matar por nome, já que o número do job pode ter mudado se você rodou outros comandos em background durante a semana.
