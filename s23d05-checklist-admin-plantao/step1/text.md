## Ação: Reproduza o incidente exato do exemplo de hoje — processo zumbi preso numa porta — pra treinar o checklist completo do zero, não só ler sobre ele.

seguir o checklist inteiro (processo → escuta → log → causa raiz) só faz sentido de verdade quando existe um sintoma real pra investigar, com uma causa raiz genuína escondida nele.

```bash
sudo nc -l -p 8080 &
echo "processo zumbi simulado: PID $!"
sudo systemctl restart app-x.service
sudo systemctl status app-x.service | grep Active
ss -tulpn | grep 8080
```

**Resultado esperado:** app-x.service aparece como active (running), mas ss -tulpn mostra a porta 8080 ocupada pelo PID do nc (o zumbi), não pelo processo novo — exatamente o sintoma do chamado #2305.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo nc -l -p 8080 &` — Sobe um netcat escutando (-l) na porta 8080 (-p 8080), rodando em segundo plano (&) — simula o processo zumbi preso na porta.
- `echo "... PID $!"` — Mostra o PID do último processo colocado em segundo plano (a variável de shell $! guarda esse PID) — precisa ser anotado pra poder matar esse processo depois.
- `systemctl restart app-x.service` — Reinicia o serviço real, que deveria assumir a porta 8080 mas não consegue, porque o netcat já está ocupando ela.
- `systemctl status ... | grep Active` — Filtra a saída do status pra mostrar só a linha de estado, confirmando que o serviço aparece rodando mesmo sem estar realmente funcional.
- `ss -tulpn | grep 8080` — Confirma qual processo está de fato escutando na porta 8080 — revelando que é o PID do netcat zumbi, não o do app-x.
</details>

> **Cilada comum:** só em VM descartável — anote o PID do processo zumbi simulado, você vai encerrá-lo explicitamente no teardown, já que o systemctl restart sozinho não resolve isso.

> **Se der diferente:** ss -tulpn não mostra nada na porta 8080 → confirme que o nc -l -p 8080 & realmente ficou rodando em segundo plano com jobs -l ; alguns shells encerram processos em background ao fechar a sessão.
