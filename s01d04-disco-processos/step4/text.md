## Ação: Compare a lista de processos parada com a lista ao vivo.

ps é a foto de agora, top é o vídeo ao vivo — usar os dois confirma se o consumo é constante ou só um pico passageiro no instante que você mediu.

```bash
ps aux --sort=-%mem
top
```

**Resultado esperado:** os processos no topo de ambos devem ser praticamente os mesmos, só que top atualiza ao vivo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ps` — Mostra um retrato (uma foto) dos processos em execução no momento em que o comando roda.
- `aux` — Combinação de opções clássica: 'a' mostra processos de todos os usuários, 'u' usa formato detalhado (com dono e uso de memória/CPU), 'x' inclui processos sem terminal associado.
- `--sort=-%mem` — Ordena a lista pelo uso de memória; o sinal de menos (-) inverte a ordem para decrescente, colocando quem mais consome no topo.
</details>

> **Cilada comum:** ver um processo consumindo memória em ps aux e já associar ele ao alerta de DISCO cheio — memória e disco são recursos diferentes, como a história de hoje mostrou.
