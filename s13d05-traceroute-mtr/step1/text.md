## Ação: rode mtr em modo relatório contra um destino externo conhecido.

Por quê: o modo -rw (report, wide) gera uma saída estática, boa pra copiar num relatório — diferente do modo interativo que fica atualizando na tela.

```bash
mtr -rw 8.8.8.8
```

**Resultado esperado:** tabela com todos os saltos até o destino, cada um com Loss% e Avg.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `mtr` — My Traceroute — combina traceroute (mostra os saltos até o destino) com ping contínuo (mede perda e latência em cada salto), atualizando em tempo real.
- `-r` — Modo report : roda por um número fixo de ciclos e imprime uma tabela final estática, em vez de ficar atualizando a tela indefinidamente — bom pra copiar num relatório.
- `-w` — Modo wide : não trunca os nomes de host longos na saída, mantendo a tabela legível mesmo com hostnames grandes.
- `8.8.8.8` — O destino da sondagem — aqui um IP público conhecido (DNS da Google), útil como referência externa estável.
</details>

> **Cilada comum:** rodar mtr por poucos segundos e já tirar conclusão — poucos pacotes enviados (Snt baixo) não são uma amostra confiável.

> **Se der diferente:** "mtr: command not found" → instale com sudo apt install mtr-tiny (Debian/Ubuntu) — o pacote mtr-tiny traz a versão de linha de comando. Todos os saltos aparecem com ??? no início da lista → normal — muitos roteadores de borda não respondem a ICMP por política própria; olhe se o PADRÃO de perda é isolado num salto específico ou se persiste até o destino.
