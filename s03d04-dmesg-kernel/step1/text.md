## Ação: Leia os eventos mais recentes do kernel, mesmo sem incidente nenhum.

conhecer o "normal" do dmesg antes de um incidente é o que te permite reconhecer rápido quando algo foge do padrão numa investigação real.

```bash
dmesg -T | tail -30
```

**Resultado esperado:** lista de eventos de kernel com timestamp legível.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dmesg` — Mostra as mensagens do buffer de log do kernel.
- `-T` — Converte os timestamps internos do kernel (segundos desde o boot) para data/hora legível — sem isso, os horários são números difíceis de interpretar.
- `| tail -30` — Pipe para tail, mostrando só as 30 últimas mensagens em vez do buffer inteiro.
</details>

> **Cilada comum:** rodar dmesg sem o -T e tentar interpretar timestamps em "segundos desde o boot" — sem conversão pra data/hora legível, correlacionar com outros logs vira matemática desnecessária.

> **Se der diferente:** "dmesg: read kernel buffer failed: Operation not permitted" → em algumas distros o buffer do kernel é restrito a root. Use sudo dmesg -T | tail -30 . a lista está vazia ou só tem mensagens de boot antigas → normal numa VM de laboratório sem incidente real acontecendo. Isso não é falha sua — é a ausência de evento que você vai aprender a reconhecer como resultado válido.
