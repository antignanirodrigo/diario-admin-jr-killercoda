## Ação: Encerre o servidor de teste que ocupou a porta 8080 e confirme que a porta voltou a ficar livre.

você ocupou a porta 8080 só para reproduzir o sintoma do ticket na sua própria VM — sem liberar, o próximo teste de porta desta aula (ou de outra) encontra um conflito fantasma que não existe de verdade.

```bash
kill %1
ss -ltnp | grep 8080 || echo "porta livre"
```

**Resultado esperado:** nenhuma linha de retorno do ss para a porta 8080 — mensagem "porta livre" confirma.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `kill %1` — Encerra o servidor de teste iniciado no passo anterior, referenciado pelo número do job em segundo plano.
- `ss -ltnp` — Lista sockets TCP (-t) em escuta (-l), em formato numérico (-n), com o processo dono de cada porta (-p).
- `| grep 8080 || echo ...` — Filtra pela porta 8080; se não encontrar nada (comando falha), o '||' confirma que a porta está livre.
</details>

> **Cilada comum:** esquecer o python3 -m http.server rodando em background. Na próxima vez que você testar uma porta, vai achar um "conflito" que na real é sobra do seu próprio laboratório.

> **Se der diferente:** "bash: kill: %1: no such job" → rode jobs para achar o número certo do job, ou pkill -f http.server para matar por nome do processo.
