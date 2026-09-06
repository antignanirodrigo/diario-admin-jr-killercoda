## Ação: aplique de verdade com -i.bak e confirme que o backup foi criado.

-i.bak faz num só comando o que o colega da história esqueceu de fazer em dois passos separados — aplicar E preservar um caminho de volta.

```bash
sed -i.bak 's/porta_antiga/porta_nova/g' teste.conf
ls teste.conf*
```

**Resultado esperado:** teste.conf modificado, e teste.conf.bak preservando a versão original intacta.

> **Cilada comum:** usar só -i sem o .bak — funciona igual pra aplicar a mudança, mas sem nenhum backup automático, você perde exatamente a rede de segurança que faz a diferença.
