## Ação: Derrube de propósito o serviço web da VM antes de começar o diagnóstico — sem um sintoma real, andar pelas quatro camadas vira leitura, não investigação.

reproduzir o "site fora do ar" na sua própria VM é o que transforma o passeio pelas quatro camadas em diagnóstico de verdade: você vai encontrar a camada de aplicação quebrada com as próprias mãos, não só ler sobre isso.

```bash
sudo python3 -m http.server 80 &
echo "PID do servidor de teste: $!"
sudo kill $!          # derruba de propósito — reproduz o "site indisponível" do chamado
```

**Resultado esperado:** o servidor de teste sobe, você anota o PID, e o kill derruba ele de propósito. A partir daqui, a porta 80 não responde mais — exatamente o sintoma do chamado #5842.

<details>
<summary>🔍 Detalhar este cenário</summary>

- `python3 -m http.server 80 &` — Sobe um servidor HTTP simples embutido no Python, escutando na porta 80, em segundo plano (o & solta o prompt de volta) — só para ter algo real respondendo antes de derrubar de propósito.
- `$!` — Variável especial do shell: guarda o PID do último processo colocado em segundo plano — é assim que você recupera o identificador do servidor de teste.
- `sudo kill $!` — Envia o sinal padrão (SIGTERM) ao processo com esse PID, encerrando o servidor de teste de propósito — reproduz o sintoma "site indisponível" do chamado #5842.
</details>

> **Cilada comum:** fazer isso numa VM de produção ou numa máquina compartilhada. Só em VM descartável — e anote o PID, ele não serve mais depois que você mata o processo.

> **Se der diferente:** "python3: command not found" → use python -m SimpleHTTPServer 80 (Python 2) ou instale com sudo apt install python3 . "Permission denied" ao subir na porta 80 → portas abaixo de 1024 exigem root — confirme que rodou com sudo .
