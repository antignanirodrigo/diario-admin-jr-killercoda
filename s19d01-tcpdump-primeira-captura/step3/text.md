## Ação: Rode o mesmo comando com sudo e com -n (sem resolver nomes), e em outro terminal gere tráfego (ping, curl, ou navegação simples).

```bash
sudo tcpdump -i eth0 -n
ping -c 5 8.8.8.8
```

**Resultado esperado:** pacotes aparecendo em tempo real correspondentes ao tráfego gerado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Necessário porque capturar pacotes brutos numa interface exige privilégio elevado — o kernel protege essa visibilidade sobre todo o tráfego, não só o seu.
- `tcpdump` — O programa que captura e traduz pacotes de rede pra uma linha legível por vez.
- `-i eth0` — Escolhe em qual interface capturar — sem isso, o tcpdump usa um comportamento padrão que pode não ser a interface certa.
- `-n` — Não resolve nomes (nem de host via DNS reverso, nem de porta via /etc/services) — mostra os números crus (IP e porta). Mais rápido e evita que o próprio tcpdump gere tráfego DNS extra enquanto você investiga.
</details>

> **Se der diferente:** "tcpdump: eth0: No such device exists" → confirme o nome exato da interface com ip a (passo anterior) e substitua eth0 pelo nome real antes de rodar de novo. Nenhum pacote aparece mesmo com o ping rodando no outro terminal → confira se os dois terminais estão na MESMA VM — capturar numa VM enquanto o ping roda em outra não mostra nada, porque o tráfego não passa pela interface que você está observando.
