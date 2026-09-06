## Ação: compare visualmente o risco — aplique 777 só pra ver, depois volte pra 640

Ver os dois lado a lado deixa concreto o que "abrir demais" significa — não é abstrato, é literalmente todo mundo do sistema com escrita e execução no arquivo.

```bash
chmod 777 teste.log
ls -l teste.log
chmod 640 teste.log
ls -l teste.log
```

**Resultado esperado:** `ls -l` mostra `-rwxrwxrwx` (777) e depois volta pra `-rw-r-----` (640).

> **Cilada comum:** fazer esse teste num arquivo de produção real "só um segundo" — mesmo por poucos segundos, 777 já é uma janela de risco real. Faça isso só em ambiente de teste, como agora.

Confirme que você terminou de volta em **640**, não em 777.
