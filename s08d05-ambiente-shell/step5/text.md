## Ação: documente sintoma, diagnóstico, correção aplicada, validação final — fechando a Semana 8.

esse registro é o modelo exato de investigação que separa "consertei" de "entendi por que quebrou e corrigi a causa raiz de forma permanente".

```bash
Sintoma: command not found em meuscript.sh
Diagnóstico: echo $PATH não incluía ~/scripts_teste; which confirmou; ls confirmou arquivo existia
Correção: export PATH adicionado ao .bashrc + source
Validado: meuscript.sh roda normalmente agora
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só "corrigido", sem registrar o diagnóstico — sem isso, o próximo "command not found" vai exigir reinvestigar tudo do zero.
