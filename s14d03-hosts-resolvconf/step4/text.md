## Ação: faça backup, remova a entrada de teste e valide com getent hosts.

Por quê: o backup antes de editar é o que te dá um caminho de volta imediato se a remoção afetar algo além da linha de teste.

```bash
sudo cp /etc/hosts /etc/hosts.bak
sudo sed -i '/app.intra.example/d' /etc/hosts
getent hosts app.intra.example
```

**Resultado esperado:** getent hosts agora retorna o mesmo IP que o dig.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `cp /etc/hosts /etc/hosts.bak` — Faz uma cópia de segurança do arquivo antes de editar — o caminho de volta imediato caso a remoção afete mais do que deveria.
- `sed -i '/app.intra.example/d' /etc/hosts` — Remove, diretamente no arquivo, a linha de teste adicionada — mesma sintaxe de remoção por padrão revisada nesta semana.
- `getent hosts` — Consulta a resolução final do sistema, seguindo a ordem do nsswitch.conf — usado aqui para validar que a remoção funcionou.
</details>

> **Cilada comum:** remover a linha errada com sed sem antes confirmar com grep quais linhas seriam afetadas.

> **Se der diferente:** O sed removeu mais linhas do que deveria → restaure do backup imediatamente com sudo cp /etc/hosts.bak /etc/hosts e refaça o sed com um padrão mais específico (ex: incluindo o IP exato, não só o nome).
