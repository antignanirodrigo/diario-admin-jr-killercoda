## Ação: Confirme que nenhum processo foi finalizado e nenhum arquivo foi apagado durante o laboratório.

diagnosticar não é a mesma coisa que agir — essa reexecução prova que hoje foi só observação, exatamente como o chamado pedia.

```bash
ps aux
```

**Resultado esperado:** rodando ps aux de novo, a lista de processos é a mesma de antes.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ps` — Mostra um retrato (snapshot) dos processos em execução no momento em que o comando roda.
- `a` — Mostra processos de todos os usuários, não só os seus.
- `u` — Formato detalhado, com dono do processo e uso de %CPU/%MEM.
- `x` — Inclui também processos sem terminal associado (daemons e serviços).
</details>

> **Cilada comum:** num momento de urgência (alerta crítico), ceder à tentação de "só apagar um log grande rapidinho" antes de terminar o diagnóstico. Isso destrói evidência e pode apagar algo necessário.
