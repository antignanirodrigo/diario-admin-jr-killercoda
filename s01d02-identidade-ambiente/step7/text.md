## Ação: Remova o usuário de teste e prove que a máquina voltou ao estado anterior.

criar → observar → remover é o ciclo que permite estudar identidade sem deixar conta órfã em servidor. Conta esquecida é porta aberta: em auditoria, é um dos achados mais comuns.

```bash
sudo userdel -r teste-jr
id teste-jr              # deve falhar agora — e falhar aqui é o resultado certo
grep teste-jr /etc/passwd || echo "removido com sucesso"
```

**Resultado esperado:** "no such user" no id e a mensagem "removido com sucesso". A máquina está exatamente como estava antes da aula.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Privilégio elevado, necessário para remover uma conta de usuário.
- `userdel` — Remove uma conta de usuário existente.
- `-r` — Remove também a pasta pessoal (home) e o mail spool do usuário — sem essa flag, os arquivos ficam órfãos no disco.
- `teste-jr` — A conta a ser removida — a mesma criada no início da aula, fechando o ciclo sem deixar rastro.
</details>

> **Cilada comum:** esquecer o -r . Sem ele o usuário some, mas a pasta /home/teste-jr fica para trás ocupando espaço e confundindo o próximo técnico.

> **Se der diferente:** "userdel: user teste-jr is currently used by process" → algum shell ainda está aberto com esse usuário. Feche a sessão dele ou use sudo pkill -u teste-jr antes de repetir.
