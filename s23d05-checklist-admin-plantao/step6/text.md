## Ação: Encerre o processo zumbi e confirme que o app-x real assume a porta corretamente — a validação final do seu relatório de fechamento.

fecha o chamado #2305 com evidência: causa raiz confirmada (processo zumbi), ação tomada (kill + restart), validação (porta assumida pelo processo certo) — o mesmo formato de relatório da seção 6 de hoje.

```bash
sudo kill -9 SEU_PID_ANOTADO
sudo systemctl restart app-x.service
ss -tulpn | grep 8080
jobs
```

**Resultado esperado:** ss -tulpn agora mostra o PID do app-x.service (não mais o nc) escutando em 8080, e jobs vem vazio.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `kill` — Envia um sinal a um processo pelo PID — apesar do nome, nem todo sinal mata o processo; sem opção nenhuma, o padrão é SIGTERM, um pedido educado de encerramento.
- `-9` — Sinal SIGKILL — força o encerramento imediato do processo, sem chance dele fazer limpeza própria. Use como último recurso, quando um kill comum (SIGTERM) não for suficiente.
</details>

> **Cilada comum:** esquecer de matar o processo zumbi antes de reiniciar o serviço real — o systemctl restart sozinho não libera uma porta ocupada por outro processo que não seja o dele.

> **Se der diferente:** "kill: (PID): No such process" → o processo já não existe mais (pode ter caído sozinho). Rode ss -tulpn | grep 8080 de novo pra confirmar quem está segurando a porta agora, antes de tentar matar de novo.
