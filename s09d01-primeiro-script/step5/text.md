## Ação: documente shebang usado, permissão aplicada, teste de execução, resultado consistente.

esse hábito de documentar desde o primeiro script é o que separa quem escreve automação confiável de quem só "faz funcionar uma vez".

```bash
Shebang: #!/bin/bash (primeira linha, confirmado)
Permissão: chmod +x aplicado
Teste: ./teste.sh e bash teste.sh produzem resultado idêntico
Variáveis: BACKUP_DIR e HOJE interpoladas corretamente com aspas duplas
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** pular a documentação achando que "é só um script simples" — os hábitos que você fixa hoje, no script mais simples possível, são os mesmos que vão sustentar scripts bem mais complexos adiante na semana.
