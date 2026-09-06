## Ação: consulte um domínio conhecido e leia a ANSWER SECTION completa.

Por quê: ler os três campos (IP, TTL, servidor) juntos é o que ensina a diferenciar resposta de cache de resposta fresca.

```bash
dig example.com A
```

**Resultado esperado:** registro A com IP, TTL e servidor que respondeu.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dig` — Domain Information Groper — ferramenta de diagnóstico DNS, mostra a resposta completa de uma consulta, não só o IP final.
- `example.com` — O nome de domínio sendo consultado.
- `A` — O tipo de registro pedido — A mapeia um nome para um endereço IPv4. Outros tipos comuns: AAAA (IPv6), CNAME (apelido), MX (e-mail).
</details>

> **Cilada comum:** ler só o IP e ignorar a linha SERVER — sem ela você não sabe se a resposta veio do resolvedor local ou de um servidor autoritativo.

> **Se der diferente:** "connection timed out; no servers could be reached" → a VM não tem um resolvedor DNS acessível. Confira /etc/resolv.conf ou tente dig @8.8.8.8 example.com A pra isolar se o problema é no resolvedor local ou na rede.
