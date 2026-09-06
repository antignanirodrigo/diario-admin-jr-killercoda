## Ação: Desmonte o cenário que você criou no primeiro passo e prove que o disco voltou ao estado original.

aqui o "ZERO mudança no sistema" do topo da aula se cumpre de verdade: o único arquivo alterado hoje foi um que você mesmo criou para estudar — e você o removeu. Esse ciclo (criar cenário → diagnosticar → desfazer) é como se treina infra sem quebrar nada de verdade.

```bash
df -h /                                  # o % ANTES de limpar
sudo rm /var/log/teste-disco-cheio.log
df -h /                                  # voltou ao valor do começo da aula?
```

**Resultado esperado:** o percentual volta ao mesmo valor que você anotou no primeiro passo. O sistema está exatamente como estava antes de você começar.

<details>
<summary>🔍 Detalhar cada comando desse bloco</summary>

- `df -h /` — Mede o percentual de uso da partição raiz, antes e depois da limpeza, para comparar.
- `sudo` — Necessário porque o arquivo de teste está em /var/log, que pertence a root.
- `rm` — Remove o arquivo de teste criado no início da aula — ação definitiva, sem lixeira.
- `/var/log/teste-disco-cheio.log` — O arquivo de teste criado só para simular o sintoma de disco cheio.
</details>

> **Cilada comum:** esquecer o arquivo de teste na VM. Daqui a duas semanas você acha um teste-disco-cheio.log de 3G, não lembra da onde veio, e desconfia de um incidente que nunca existiu. Sempre desfaça o que você montou.

> **Se der diferente:** Apaguei o arquivo mas o df não baixou → algum processo ainda mantém o arquivo aberto. Confirme com sudo lsof +L1 . O espaço só volta quando o processo fecha (ou reinicia). Esse é exatamente o caso real mais confuso de disco cheio — você acabou de encontrá-lo ao vivo. "rm: cannot remove ... Permission denied" → falta sudo .
