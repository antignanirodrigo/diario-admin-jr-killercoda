## Ação: documente tamanho antes, tamanho depois, comandos usados e validação final.

um registro escrito da sequência completa (as duas camadas, os dois comandos) é o que evita repetir o mesmo esquecimento da próxima vez, sob pressão.

```bash
LV: lv_app | antes: 10G | depois: 15G
Comandos: lvextend -L +5G + resize2fs
Validado com: df -h /app -> 15G
```

**Resultado esperado:** registro completo reproduzindo o painel 6 da prancha de hoje.

> **Cilada comum:** documentar só o comando de lvextend, esquecendo de registrar o resize — a documentação incompleta reproduz exatamente o erro que você acabou de aprender a evitar.
