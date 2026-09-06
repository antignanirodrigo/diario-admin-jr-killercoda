## Ação: Encerre o gerador em segundo plano e apague os logs de laboratório.

processo em segundo plano esquecido continua escrevendo arquivo para sempre — é exatamente assim que aparece um "disco enchendo do nada" semanas depois. Encerrar o que você iniciou faz parte do trabalho.

```bash
kill %1                        # encerra o gerador (ou: kill
)
jobs                           # deve voltar vazio
rm -rf ~/lab-logs
ls ~/lab-logs 2>/dev/null || echo "laboratório limpo"
```

**Resultado esperado:** jobs sem nada listado e a mensagem "laboratório limpo".

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `kill` — Envia um sinal para terminar um processo.
- `%1` — Referência ao job número 1 em segundo plano DESTA sessão de shell — não é o PID do processo.
- `jobs` — Lista os processos em segundo plano controlados pela sessão atual.
- `rm -rf` — Remove recursivamente (-r, entra em subpastas) e força sem pedir confirmação (-f).
- `~/lab-logs` — A pasta de teste criada no início do laboratório, alvo da remoção.
- `ls ... 2>/dev/null` — Lista a pasta descartando qualquer mensagem de erro (redireciona stderr para o 'buraco negro').
- `|| echo ...` — Só executa o echo se o comando anterior (ls) falhar — aqui, espera-se que falhe porque a pasta não existe mais.
</details>

> **Cilada comum:** fechar o terminal achando que isso mata o gerador. Dependendo de como a sessão termina, o processo pode continuar rodando órfão. Encerre explicitamente e confirme com jobs .

> **Se der diferente:** "kill: %1: no such job" → a sessão pode ter perdido o controle do job. Ache pelo comando: pgrep -af "pedido processado" e encerre pelo PID.
