## Ação: Pare e remova o serviço de teste — nada de unit de teste esquecida no systemd, chamada por engano às 3 da manhã meses depois.

unit de teste esquecida continua aparecendo em systemctl list-units e pode confundir o próximo diagnóstico, fazendo alguém achar que existe um serviço real ali.

```bash
sudo systemctl stop app-teste.service
sudo systemctl disable app-teste.service
sudo rm /etc/systemd/system/app-teste.service
sudo systemctl daemon-reload
systemctl status app-teste.service 2>&1 | head -3
```

**Resultado esperado:** "Unit app-teste.service could not be found" — o serviço de teste sumiu completamente do systemd.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl stop app-teste.service` — Para a execução do serviço de teste.
- `systemctl disable app-teste.service` — Remove o serviço da inicialização automática do boot.
- `rm /etc/systemd/system/app-teste.service` — Apaga o arquivo de unit criado pro teste.
- `systemctl daemon-reload` — Recarrega a configuração do systemd pra que ele esqueça a unit removida — sem isso, ela pode continuar aparecendo em memória mesmo depois do arquivo apagado.
- `systemctl status ... 2>&1 | head -3` — Confirma que o systemd já não reconhece mais a unit; 2>&1 junta a saída de erro com a normal, e head -3 mostra só as três primeiras linhas, onde já aparece a mensagem esperada.
</details>

> **Cilada comum:** apagar só o arquivo sem rodar daemon-reload depois — o systemd mantém a unit em memória e ela continua aparecendo, dando a falsa impressão de que a remoção não funcionou.

> **Se der diferente:** Ainda aparece em systemctl list-units --all → rode sudo systemctl daemon-reload de novo e confirme com systemctl list-units --all | grep app-teste .
