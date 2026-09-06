## Ação: Inicie captura simultânea nas duas VMs, filtrando por host e porta relevantes, salvando em arquivo.

```bash
sudo tcpdump -i eth0 -n host 10.10.10.20 and port 8080 -w cliente.pcap
sudo tcpdump -i eth0 -n host 10.10.10.50 and port 8080 -w servidor.pcap
```

**Resultado esperado:** dois arquivos .pcap sendo gravados ao mesmo tempo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `host 10.10.10.20 and port 8080` — Isola só a conversa entre esse host específico e essa porta específica — a mesma lógica de interseção do Dia 2, agora aplicada nos dois pontos de captura ao mesmo tempo.
- `-w cliente.pcap` — Grava a captura desse lado (o cliente) num arquivo próprio, pra comparar depois com calma com o arquivo do outro lado — a mesma técnica do Dia 4, aplicada aqui pra viabilizar a comparação entre dois pontos.
</details>

> **Se der diferente:** Os dois arquivos .pcap não têm nenhum pacote em comum, mesmo com o teste funcionando → confirme que os IPs 10.10.10.20 e 10.10.10.50 nos dois comandos batem com os IPs reais das duas VMs (rode ip a nas duas). IP trocado entre cliente e servidor é o erro mais comum nesse tipo de captura em dois pontos.
