## Ação: Encerre o processo que prende o arquivo e confirme que o espaço foi liberado.

essa é a prova de que o espaço volta assim que o processo solta o arquivo — não com um rm mágico, mas com o processo liberando o vínculo.

```bash
lsof | grep deleted
```

**Resultado esperado:** lsof | grep deleted não mostra mais o arquivo, espaço confirmado livre.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `Ctrl+C` — Encerra o processo tail -f que estava rodando na janela 1, liberando o vínculo com o arquivo.
- `lsof | grep deleted` — Reexecutado para confirmar que o arquivo já não aparece mais como '(deleted)' — o espaço foi liberado.
</details>

> **Cilada comum:** matar o processo com kill -9 num caso real sem aprovação — em produção, reinicie o serviço com o mesmo cuidado da Semana 2, não mate processos às cegas.
