## Ação: calcule manualmente o endereço de rede de cada IP usando a máscara /24.

Por quê: o cálculo é a evidência teórica — antes de testar na prática, você já sabe o que esperar.

```bash
# 192.168.10.15 AND 255.255.255.0 = 192.168.10.0
# 192.168.10.40 AND 255.255.255.0 = 192.168.10.0
```

**Resultado esperado:** ambos resultam em 192.168.10.0/24 — mesma rede.

> **Cilada comum:** pular esse passo achando "parece que bate" — é exatamente esse hábito que causa erro de sub-rede em produção.
