## Ação: Meça o disco e identifique qual sistema de arquivos está mais cheio.

df é o primeiro comando de qualquer alerta de disco — mede o TAMANHO do problema antes de você sair procurando causa em qualquer lugar.

```bash
df -h
```

**Resultado esperado:** uma tabela com percentual de uso por partição, com pelo menos uma linha destacada como mais crítica.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `df` — Mostra o espaço usado e disponível em cada sistema de arquivos montado.
- `-h` — Formato legível por humanos (K, M, G) em vez do número bruto de blocos.
</details>

> **Cilada comum:** pular direto pra du sem rodar df antes — sem saber qual partição está crítica, você pode gastar tempo medindo a pasta errada.

> **Se der diferente:** Vejo dezenas de linhas estranhas ( tmpfs , overlay , /snap/... ) → normal. São pseudo-partições em memória e pacotes montados; ignore e olhe as linhas que começam com /dev/ . Nenhuma partição está crítica → o passo do CENÁRIO não pegou. Confira se o arquivo existe: ls -lh /var/log/teste-disco-cheio.log . "Uso 100%" mas o sistema funciona → o Linux reserva ~5% da partição para o root. Está no limite de verdade; trate como incidente.
