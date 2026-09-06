## Ação: Simule um incidente combinado: gere carga de CPU e confira acessos ao mesmo tempo.

praticar coletar duas fontes ao mesmo tempo, mesmo sintéticas, é o treino necessário pra fazer isso rápido quando um chamado real com dois sintomas chegar.

```bash
yes > /dev/null &
last -a
```

**Resultado esperado:** dois conjuntos de dados coletados na mesma janela de investigação.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `yes > /dev/null &` — Gera uma carga sintética de CPU em segundo plano, descartando a saída — simula o sintoma de 'lentidão' do incidente combinado.
- `last -a` — Lista o histórico de sessões de login recentes, com a origem (host/IP) de cada uma — coletado na mesma janela da carga de CPU.
</details>

> **Cilada comum:** investigar as duas fontes em momentos separados, sem anotar horários — sem essa sincronização, fica impossível cruzar depois.
