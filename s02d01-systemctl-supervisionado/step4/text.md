## Ação: Espere alguns segundos e cheque o status de novo, pra confirmar estabilidade.

essa segunda checagem, depois de um tempo, é o que diferencia "subiu" de "ficou de pé" — exatamente o detalhe que faltou no caso real que contei na história de hoje.

```bash
systemctl status nginx
```

**Resultado esperado:** o serviço continua active (running), sem voltar pra failed.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl status nginx` — Consulta o estado do serviço de novo, após um intervalo — confirma ESTABILIDADE, não só que ele subiu.
</details>

> **Cilada comum:** checar status só uma vez, logo após o restart, e já fechar o chamado — sem essa segunda olhada com intervalo, você não tem evidência de estabilidade real.
