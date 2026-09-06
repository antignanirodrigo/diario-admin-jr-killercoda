## Ação: Suba o serviço de novo e confirme que as quatro camadas voltaram a responder — sem isso, a VM fica com a porta 80 morta pra sempre.

fechar o ciclo criar-sintoma → diagnosticar → restaurar é o que garante que a VM sai da aula exatamente como entrou, sem processo órfão escutando ou porta presa.

```bash
sudo python3 -m http.server 80 &
ss -tln | grep :80
```

**Resultado esperado:** a porta 80 volta a aparecer em LISTEN — o mesmo diagnóstico de hoje, agora confirmando a recuperação em vez do incidente.

<details>
<summary>🔍 Detalhar este cenário</summary>

- `sudo python3 -m http.server 80 &` — Sobe o servidor de teste de novo, em segundo plano — restaura o estado anterior ao incidente simulado no início do laboratório.
- `ss -tln | grep :80` — Confirma que a porta 80 voltou a aparecer em LISTEN — validação de que a camada de aplicação está de volta, fechando o ciclo criar-sintoma → diagnosticar → restaurar.
</details>

> **Cilada comum:** esquecer o servidor de teste rodando em segundo plano depois da aula — ele fica ocupando a porta 80 e confunde o próximo laboratório que você fizer nessa mesma VM.

> **Se der diferente:** A porta 80 continua sem resposta mesmo depois do restart → confirme que não sobrou outro processo preso nela com sudo ss -tlnp | grep :80 ; mate qualquer PID residual antes de subir de novo.
