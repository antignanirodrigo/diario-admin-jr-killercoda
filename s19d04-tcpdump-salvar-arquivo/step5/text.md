## Ação: Remova o arquivo de captura de teste e confirme que não sobrou nada na VM.

um .pcap esquecido no disco não é tão sensível quanto uma senha, mas pode conter tráfego real capturado (inclusive de outros serviços rodando na mesma VM). Encerrar o laboratório sem deixar arquivo de captura pra trás é a mesma disciplina de "ZERO mudança no sistema" que vale pra qualquer teste — não é exclusiva de disco ou processo.

```bash
rm ~/teste.pcap
ls ~/teste.pcap 2>/dev/null || echo "arquivo removido"
```

**Resultado esperado:** a mensagem "arquivo removido" — nenhum arquivo de captura esquecido na VM.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `rm ~/teste.pcap` — Remove o arquivo de captura de teste do disco.
- `ls ~/teste.pcap 2>/dev/null` — Tenta listar o arquivo já removido, descartando a mensagem de erro (redirecionada para /dev/null).
- `|| echo "arquivo removido"` — Executa esse echo só quando o ls anterior falha (arquivo não existe mais) — confirma visualmente a remoção.
</details>

> **Cilada comum:** esquecer que pode haver um processo tcpdump ainda em segundo plano gravando nesse arquivo. Confirme com pgrep tcpdump antes de apagar, ou o arquivo volta a crescer sozinho depois de removido.

> **Se der diferente:** "rm: cannot remove '~/teste.pcap': Permission denied" → o arquivo foi criado com sudo tcpdump -w , então pertence a root. Use sudo rm ~/teste.pcap .
