## Ação: Teste dst host e src host separadamente, e compare a diferença de resultado.

```bash
sudo tcpdump -i eth0 -n dst host 10.10.10.50
sudo tcpdump -i eth0 -n src host 10.10.10.50
```

**Resultado esperado:** cada filtro mostrando só um sentido do tráfego.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dst host 10.10.10.50` — Restringe o filtro host a pacotes onde esse IP aparece especificamente como DESTINO — só o que está chegando nele.
- `src host 10.10.10.50` — Restringe o filtro host a pacotes onde esse IP aparece especificamente como ORIGEM — só o que está saindo dele.
</details>

> **Se der diferente:** dst host não mostra nada, mas host sozinho (sem dst ) mostrava tráfego normalmente → normal, e é exatamente o ponto do exercício: dst host só pega pacotes CHEGANDO nesse IP. Se o tráfego que você gerou tinha esse IP como origem (respondendo pra você), ele não aparece aqui — apareceria em src host . Não sei qual IP usar em cada teste → use o IP da outra VM do laboratório nos dois testes ( dst host e src host ) e gere tráfego nos dois sentidos (ex.: um ping saindo e a resposta chegando) pra ver a diferença na prática.
