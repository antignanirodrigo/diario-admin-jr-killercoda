## Ação: corrija a simulação e confirme que o script completa com sucesso, registrando cada etapa no log.

ver o log registrar sucesso real (não genérico) é o que a Questão 2 vai testar — a diferença entre "rodou até o fim" e "cada etapa confirmou que funcionou".

```bash
sed -i 's#/caminho/que/nao/existe#~/lab_backup/origem#' backup.sh
./backup.sh
cat ~/lab_backup/backup.log
```

**Resultado esperado:** log completo mostrando "TAR OK", confirmando que a etapa passou de verdade, não só que o script terminou.

> **Cilada comum:** confiar só na ausência de mensagem de erro na tela — sempre confira o conteúdo real do log antes de considerar o backup validado.
