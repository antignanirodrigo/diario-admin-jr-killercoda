## Ação: Execute o restart e confira o status imediatamente depois.

restart exige sudo de propósito — essa exigência de privilégio é o que garante que a ação fica registrada em nome de quem executou, não é anônima.

```bash
sudo systemctl restart nginx
systemctl status nginx
```

**Resultado esperado:** active (running) com um novo horário de início, confirmando que o restart funcionou.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Controlar serviços do sistema exige privilégio elevado.
- `systemctl` — Ferramenta de controle do systemd — inicia, para, reinicia e consulta o estado de serviços.
- `restart` — Subcomando que para e inicia o serviço de novo, em sequência — diferente de 'reload', que recarrega configuração sem interromper o processo.
- `nginx` — O serviço alvo da ação.
</details>

> **Cilada comum:** ver "active (running)" e já considerar resolvido — como o caso do técnico da história de hoje, isso é só o primeiro sinal, não a confirmação de estabilidade.

> **Se der diferente:** O restart não muda o horário de início no status → confira se o comando anterior ( stop ) realmente rodou sem erro — sem o serviço estar parado antes, o "restart" pode não gerar um novo horário de start visível.
