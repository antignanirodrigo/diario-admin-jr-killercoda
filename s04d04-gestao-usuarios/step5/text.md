## Ação: Corrija o erro, restaurando os grupos perdidos com -aG.

essa correção só é possível porque você anotou os grupos ANTES do erro — sem esse registro prévio, restaurar seria adivinhação.

```bash
sudo usermod -aG grupo1 teste_user
sudo usermod -aG grupo2 teste_user
id teste_user
```

**Resultado esperado:** todos os grupos originais restaurados, confirmados com id.

<details>
<summary>🔍 Detalhar esse comando (restaurando com -aG)</summary>

- `usermod` — Modifica atributos de uma conta de usuário já existente.
- `-a` — Append: ADICIONA o grupo indicado à lista de grupos do usuário, sem remover os que ele já tinha.
- `-G grupo` — Grupo secundário a adicionar — só funciona corretamente combinado com -a.
- `id teste_user` — Confirma que os grupos perdidos no passo anterior foram restaurados.
</details>

> **Cilada comum:** tentar corrigir de memória, sem ter anotado os grupos originais — é exatamente por isso que id antes é indispensável, não opcional.
