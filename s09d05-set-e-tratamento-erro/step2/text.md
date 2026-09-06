## Ação: adicione set -e no início e teste de novo.

essa é a primeira camada de proteção que teria mudado o desfecho da história — parar automaticamente em vez de seguir cegamente.

```bash
sed -i '1a set -e' teste.sh
./teste.sh; echo "exit code: $?"
```

**Resultado esperado:** o script para no cd que falhou — "continuei" nunca aparece, e o exit code confirma erro.

> **Cilada comum:** achar que set -e sozinho já é proteção completa — ele reage a código de erro, mas não valida se a lógica de negócio (esse é o diretório certo?) está correta.
