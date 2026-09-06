## Ação: Pare um serviço de teste na sua VM, simulando a falha do chamado, e confirme.

você precisa de uma falha real (mesmo que provocada por você) pra praticar a sequência completa — não dá pra treinar "confirmar antes de agir" sem ter algo pra confirmar.

```bash
sudo systemctl stop nginx
systemctl status nginx
```

**Resultado esperado:** systemctl status mostra inactive (dead), simulando a falha do chamado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Controlar (parar) um serviço do sistema exige privilégio elevado.
- `systemctl stop` — Para um serviço em execução, sem desabilitar o início automático dele no boot.
- `nginx` — O serviço alvo, parado de propósito para simular a falha do chamado.
- `systemctl status nginx` — Confirma o novo estado: inactive (dead).
</details>

> **Cilada comum:** parar um serviço de produção de verdade "só pra testar" — sempre use um serviço descartável numa VM de teste, nunca simule falha em ambiente real.

> **Se der diferente:** "Unit nginx.service could not be found" → o nginx não está instalado na sua VM. Instale com sudo apt install nginx -y antes do laboratório, ou troque por outro serviço já presente (ex: cron , ssh ).
