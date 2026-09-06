## Ação: adicione PATH explícito no início do script e teste de novo.

essa é a correção exata que resolveu o ticket da história — declarar PATH explicitamente resolve o problema na raiz, não importa quem chame o script depois.

```bash
cat > teste.sh << 'EOF'
#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
rsync --version
EOF
sleep 65 && cat /tmp/teste.log
```

**Resultado esperado:** execução agendada bem-sucedida — a saída da versão do rsync aparece no log, comando encontrado.

> **Cilada comum:** copiar um PATH genérico da internet sem confirmar se ele realmente cobre onde os comandos do SEU sistema estão instalados.
