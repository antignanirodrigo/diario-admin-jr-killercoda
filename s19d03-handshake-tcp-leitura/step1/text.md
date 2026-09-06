## Ação: Capture tráfego enquanto conecta com sucesso a um serviço ativo (ex.: curl pra um servidor web na VM).

```bash
sudo tcpdump -i eth0 -n port 80
curl http://localhost
sudo tcpdump -i eth0 -n 'tcp[tcpflags] & (tcp-syn|tcp-ack) != 0'
```

**Resultado esperado:** as três linhas do handshake completo visíveis na captura.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `tcp[tcpflags]` — Acessa diretamente o byte de flags dentro do cabeçalho TCP do pacote, permitindo montar um filtro por bit em vez de usar só as palavras prontas do tcpdump.
- `& (tcp-syn|tcp-ack)` — Operação bit a bit (AND) que verifica se o bit de SYN OU o bit de ACK está ligado naquele pacote — tcp-syn e tcp-ack são apelidos que o tcpdump já conhece pros bits de flag correspondentes.
- `!= 0` — Só deixa passar o pacote se essa operação der resultado diferente de zero, ou seja, se pelo menos um dos dois bits (SYN ou ACK) estiver realmente presente — filtrando exatamente os pacotes do handshake (SYN, SYN-ACK, ACK) e ignorando o resto da conversa.
</details>

> **Se der diferente:** O handshake não aparece, só a linha de erro do curl → confirme que existe realmente um servidor web escutando na porta 80 da VM (ex.: sudo python3 -m http.server 80 ou nginx). Sem serviço ativo, o curl falha antes até de completar o SYN, e não há handshake nenhum pra capturar.
