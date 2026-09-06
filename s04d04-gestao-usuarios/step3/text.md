## Ação: Adicione o usuário a dois grupos diferentes, um de cada vez, sempre com -aG.

ver os grupos se ACUMULANDO, um por um, é o comportamento correto e esperado que você vai usar sempre em produção.

```bash
sudo usermod -aG grupo1 teste_user
sudo usermod -aG grupo2 teste_user
id teste_user
```

**Resultado esperado:** id teste_user mostra os dois grupos acumulados, nenhum perdido.

<details>
<summary>🔍 Detalhar esse comando (o jeito CORRETO)</summary>

- `usermod` — Modifica atributos de uma conta de usuário já existente.
- `-a` — Append: ADICIONA o grupo indicado à lista de grupos do usuário, sem mexer nos grupos que ele já tinha.
- `-G grupo1` — Grupo secundário a adicionar — o -a só funciona corretamente quando usado JUNTO com -G.
- `teste_user` — O usuário sendo modificado.
</details>

> **Cilada comum:** tentar adicionar os dois grupos numa linha só sem revisar a sintaxe — `usermod -aG grupo1,grupo2` funciona, mas `-aG grupo1 -aG grupo2` não é válido.

> **Se der diferente:** "usermod: group 'grupo1' does not exist" → os grupos de teste ainda não foram criados. Volte ao passo de setup e rode sudo groupadd grupo1 grupo2 grupo3 antes de continuar.
