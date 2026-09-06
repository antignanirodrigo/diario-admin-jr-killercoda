## Ação: adicione mais uma variável e confirme que ela é interpolada corretamente.

confirmar a interpolação de variáveis é a base pra tudo que vem nos próximos dias da Semana 9 — condicionais, loops, funções, todos dependem de variáveis funcionando direito.

```bash
echo 'HOJE=$(date +%F)' >> teste.sh
echo 'echo "Backup de $BACKUP_DIR em $HOJE"' >> teste.sh
./teste.sh
```

**Resultado esperado:** saída mostrando "Backup de /dados em 2026-XX-XX", com os valores reais das variáveis substituídos.

> **Cilada comum:** usar aspas simples em vez de duplas ao redor de variáveis — aspas simples impedem a interpolação, e a variável aparece literalmente como texto ($BACKUP_DIR) em vez do valor.
