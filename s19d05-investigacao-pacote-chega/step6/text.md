## Ação: Remova a regra de firewall de teste no servidor e confirme que a porta voltou a responder normalmente.

uma regra de DROP esquecida no iptables é exatamente o tipo de mudança que gera um chamado idêntico ao de hoje, semanas depois, pra outra pessoa investigar do zero. Fechar o laboratório sem residual é a mesma disciplina de "ZERO mudança no sistema" que vale pra qualquer teste de rede.

```bash
sudo iptables -D INPUT -p tcp --dport 8080 -j DROP
sudo iptables -L INPUT -n | grep 8080 || echo "regra removida"
curl http://10.10.10.20:8080
```

**Resultado esperado:** a mensagem "regra removida" e o curl do cliente respondendo normalmente de novo, como antes do bloqueio.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `iptables -D INPUT ...` — Remove (Delete) a regra de DROP específica adicionada no passo anterior, revertendo o bloqueio — os parâmetros depois de -D precisam bater exatamente com os usados na criação da regra.
- `iptables -L INPUT -n` — Lista (List) as regras atuais da cadeia INPUT em formato numérico (-n), pra conferir se a regra de teste realmente saiu.
- `| grep 8080 || echo "regra removida"` — Se a busca por 8080 não encontrar mais nenhuma linha (regra já removida), mostra essa mensagem de confirmação.
- `curl http://10.10.10.20:8080` — Confirma que a conectividade voltou ao normal depois de desfazer o bloqueio.
</details>

> **Cilada comum:** usar iptables -F (flush) pra "limpar tudo de uma vez" em vez de remover só a regra específica — isso apaga QUALQUER outra regra de firewall que já existisse na VM antes do laboratório, inclusive regras que não foram criadas por você hoje.

> **Se der diferente:** "iptables: Bad rule (does it exist?)" → a sintaxe de remoção ( -D ) precisa bater exatamente com a de adição ( -A ). Confira as regras existentes com sudo iptables -L INPUT -n --line-numbers e remova pelo número da linha com sudo iptables -D INPUT <numero> se a remoção por sintaxe falhar.
