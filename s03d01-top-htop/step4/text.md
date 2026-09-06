## Ação: Gere uma carga de teste e observe o processo aparecer no topo do htop.

gerar a própria carga é a forma mais segura de ver o comportamento real do top/htop antes de precisar diagnosticar isso em produção sob pressão.

```bash
yes > /dev/null &
```

**Resultado esperado:** processo de teste visível consumindo %CPU alto, load average subindo em tempo real.

<details>
<summary>🔍 Detalhar essa sintaxe</summary>

- `yes` — Comando que imprime 'y' infinitamente, o mais rápido possível — usado aqui só para gerar carga de CPU de propósito, de forma segura e controlada.
- `> /dev/null` — Redireciona toda essa saída para /dev/null, um 'buraco negro' do sistema — descarta o texto sem encher a tela nem o disco.
- `&` — Coloca o comando em segundo plano (background), devolvendo o controle do terminal imediatamente, sem esperar o comando terminar (ele nunca terminaria sozinho).
</details>

> **Cilada comum:** esquecer o processo de teste rodando depois do laboratório — sempre encerre com kill no final, senão ele continua consumindo CPU sem necessidade.

> **Se der diferente:** rodou o comando duas vezes sem perceber e agora tem dois processos yes disputando CPU → confira com jobs antes de matar — pode precisar de kill %1 e kill %2 , não só um.
