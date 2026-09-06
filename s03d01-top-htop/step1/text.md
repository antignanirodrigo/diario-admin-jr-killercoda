## Ação: Leia o load average dos três períodos antes de fazer qualquer coisa.

top é a foto rápida da carga geral — o primeiro comando de qualquer ticket de "lento", antes de qualquer suposição sobre a causa.

```bash
top
```

**Resultado esperado:** três números identificados e anotados, mesmo que baixos.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `top` — Mostra em tempo real os processos em execução, uso de CPU/memória e o load average (carga média), atualizando a cada poucos segundos.
</details>

> **Cilada comum:** olhar só o número de 1 minuto e ignorar os outros dois — sem os três, você não sabe se a carga está subindo, estável ou já caindo.
