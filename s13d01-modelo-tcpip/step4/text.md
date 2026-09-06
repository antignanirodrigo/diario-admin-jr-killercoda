## Ação: confirme a camada de transporte listando portas escutando.

Por quê: uma porta ausente na lista, com as camadas de baixo saudáveis, aponta direto pra causa na aplicação — sem precisar adivinhar.

```bash
ss -tln
```

**Resultado esperado:** lista de portas, incluindo ao menos a 22 (SSH), se estiver ativa.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `ss` — Substituto moderno do antigo netstat — lista sockets (conexões e portas) diretamente do kernel.
- `-t` — Mostra apenas sockets TCP — filtra fora UDP e outros tipos, focando na camada de transporte.
- `-l` — Mostra apenas sockets em estado listening (escutando) — serviços prontos pra aceitar conexão, não conexões já estabelecidas.
- `-n` — Mostra endereços e portas como números, sem tentar resolver nomes — evita atraso de DNS e mostra o dado bruto.
</details>

> **Cilada comum:** testar só com ping , que só valida a camada de rede — nunca confirma se a porta da aplicação está escutando.
