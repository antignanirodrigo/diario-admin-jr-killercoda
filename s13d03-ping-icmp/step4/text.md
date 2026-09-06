## Ação: reinicie o serviço web e repita os três testes em sequência.

Por quê: repetir os três testes depois da correção é o que confirma que TODAS as camadas voltaram, não só a que você mexeu.

```bash
systemctl start nginx
ping -c 3 127.0.0.1 && nc -zv 127.0.0.1 80 && curl --connect-timeout 5 http://127.0.0.1
```

**Resultado esperado:** ping OK, nc succeeded, curl retornando conteúdo HTML.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `systemctl start nginx` — Reinicia o serviço web parado de propósito no passo anterior.
- `&&` — Encadeamento condicional: cada comando só roda se o anterior teve sucesso — os três testes (ping, nc, curl) precisam passar em sequência para a cadeia inteira completar.
- `curl --connect-timeout 5` — Faz uma requisição HTTP real; --connect-timeout 5 limita a 5 segundos a espera pela conexão, evitando travar o teste se o serviço não responder.
</details>

> **Cilada comum:** testar só a camada que você corrigiu e assumir que as outras continuam boas — sempre revalide as três.
