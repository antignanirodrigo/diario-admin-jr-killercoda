## Ação: Provoque um conflito de porta conhecido e encontre a causa só pelo journal.

reproduzir o erro de propósito, num ambiente controlado, é a forma mais segura de reconhecer essa mensagem específica quando ela aparecer de verdade num chamado real.

```bash
python3 -m http.server 8080 &
```

**Resultado esperado:** mensagem de erro específica localizada, explicando exatamente por que o serviço falhou.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `python3 -m http.server 8080` — Sobe um servidor HTTP simples de teste, ocupando a porta 8080.
- `&` — Coloca o comando em segundo plano, liberando o terminal imediatamente.
</details>

> **Cilada comum:** confundir "porta ocupada" com "serviço com bug" — a mensagem address already in use aponta pra um conflito de recurso, não pra um defeito no código do serviço.

> **Se der diferente:** "OSError: [Errno 98] Address already in use" → a porta 8080 já está ocupada por outro processo (talvez sobra de um teste anterior). Use outra porta, ex: python3 -m http.server 8081 , e ajuste o restante do exercício.
