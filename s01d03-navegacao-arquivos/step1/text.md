## Ação: Crie um log grande e um que cresce em tempo real — sem os dois, metade dos comandos de hoje não tem o que mostrar.

head , tail -f e less resolvem problemas diferentes — mas isso só fica óbvio quando existe um arquivo grande demais para cat e outro que muda enquanto você olha. Agora você tem os dois.

```bash
mkdir -p ~/lab-logs
seq 1 200000 | sed 's/^/2026-09-05 INFO linha /' > ~/lab-logs/grande.log
ls -lh ~/lab-logs/grande.log
(while true; do echo "$(date +%T) INFO pedido processado"; sleep 2; done) >> ~/lab-logs/vivo.log &
echo "gerador em segundo plano: PID $!"
```

**Resultado esperado:** o grande.log com alguns MB e a mensagem com o PID do gerador. O vivo.log ganha uma linha nova a cada 2 segundos.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `seq 1 200000` — Gera uma sequência de números de 1 a 200000, um por linha — usado aqui só para criar volume de dados de teste.
- `|` — Pipe: envia a saída do seq como entrada do sed, em vez de mostrar na tela.
- `sed 's/^/2026-09-05 INFO linha /'` — Substituição do sed: '^' é o INÍCIO de cada linha, então isso insere o prefixo de log antes de cada número, sem apagar o número original.
- `>` — Redireciona a saída para um arquivo, criando (ou sobrescrevendo) ~/lab-logs/grande.log.
</details>

> **Cilada comum:** rodar isso na raiz ou em /var/log . Use ~/lab-logs como aqui — e anote o PID , você vai encerrar esse processo no último passo.

> **Se der diferente:** "seq: command not found" → alternativa: for i in $(seq 1 200000) não vai funcionar sem seq — use awk 'BEGIN{for(i=1;i<=200000;i++) print "2026-09-05 INFO linha " i}' > ~/lab-logs/grande.log . O gerador não mostrou PID → rode jobs -l para ver os processos em segundo plano desta sessão. O arquivo ficou pequeno demais → confira se o sed rodou; sem ele o arquivo ainda funciona para o exercício, só fica menor.
