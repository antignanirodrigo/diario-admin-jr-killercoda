## Ação: Identifique a rota padrão (default via).

saber a rota padrão é entender por onde o servidor "sai pro mundo" — essencial pra diagnósticos futuros de "não conecta com nada externo".

```bash
ip route
```

**Resultado esperado:** gateway padrão identificado corretamente.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ip` — Ferramenta moderna de configuração e consulta de rede no Linux.
- `route` — Subcomando que mostra a tabela de rotas — para onde o tráfego é enviado conforme o destino, incluindo a rota padrão (default via).
</details>

> **Cilada comum:** confundir a rota da rede local (ex: 192.168.1.0/24) com a rota padrão (default via) — são linhas diferentes com propósitos diferentes.

> **Se der diferente:** Aparecem várias linhas e não sei qual é a padrão → procure a linha que começa com default via — essa é a rota padrão, o "portão de saída" do servidor pra internet.
