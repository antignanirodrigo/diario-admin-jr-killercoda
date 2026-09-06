## Ação: compare o PATH do seu shell interativo com o PATH que o cron realmente usa.

ver essa diferença com os próprios olhos, no seu próprio sistema, é o que torna concreto o que causou o incidente da história — não é teoria, é o ambiente real do cron.

```bash
echo $PATH
(crontab -l 2>/dev/null; echo "* * * * * echo \$PATH > /tmp/cronpath.txt") | crontab -
sleep 65 && cat /tmp/cronpath.txt
```

**Resultado esperado:** os dois PATHs claramente diferentes — o do cron bem mais curto que o do shell interativo.

> **Cilada comum:** esquecer de remover essa linha de teste do crontab depois — ela roda a cada minuto indefinidamente se não for removida.
