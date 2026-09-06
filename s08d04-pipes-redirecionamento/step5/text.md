## Ação: documente comando completo, arquivo gerado, confirmação de que tela e arquivo batem.

essa confirmação de que "arquivo bate com tela" é exatamente o passo de validação que a Questão 2 vai testar — não basta gerar o arquivo, é preciso confirmar que ele é fiel.

```bash
Comando: journalctl -u ssh --since '1 hour ago' 2>&1 | grep -i fail | tee -a ssh_investigacao.log
Arquivo: ssh_investigacao.log
Conferido: conteúdo do arquivo bate exatamente com o que apareceu na tela
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** anexar o arquivo ao ticket sem essa conferência final — presumir que tee "sempre funciona certo" é o tipo de suposição que uma investigação séria não pode se dar ao luxo de fazer.
