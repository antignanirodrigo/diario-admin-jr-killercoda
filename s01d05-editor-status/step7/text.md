## Ação: Remova o serviço de teste e confirme que o systemd não o conhece mais.

unit de teste esquecida aparece para sempre em systemctl --failed e polui o diagnóstico do próximo incidente real. O reset-failed é o passo que quase todo mundo esquece — e é ele que limpa o histórico de falha.

```bash
sudo systemctl reset-failed teste-jr.service
sudo rm /etc/systemd/system/teste-jr.service
sudo systemctl daemon-reload
systemctl status teste-jr.service 2>&1 | head -3   # deve dizer que não existe
```

**Resultado esperado:** "Unit teste-jr.service could not be found" — o serviço sumiu e a lista de falhas do sistema está limpa de novo.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `reset-failed` — Limpa o histórico de falha de uma unidade no systemd — sem isso, ela continua aparecendo em 'systemctl --failed' mesmo depois de removida.
- `rm /etc/systemd/system/teste-jr.service` — Apaga o arquivo da unit criada no início da aula.
- `daemon-reload` — Recarrega a configuração do systemd, fazendo-o esquecer units removidas do disco.
- `systemctl status ... 2>&1 | head -3` — Mostra o status da unit e junta stderr com stdout (2>&1), exibindo só as 3 primeiras linhas — o suficiente para confirmar 'could not be found'.
</details>

> **Cilada comum:** apagar o arquivo sem rodar daemon-reload depois. O systemd mantém a unit em memória e ela continua aparecendo, dando a impressão de que a remoção não funcionou.

> **Se der diferente:** Ainda aparece em systemctl --failed → rode sudo systemctl reset-failed sem argumento para limpar todas as falhas registradas.
