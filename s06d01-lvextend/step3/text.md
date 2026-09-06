## Ação: rode lvextend no LV de teste e confirme a mudança — mas pare aí, sem rodar o resize ainda, e reproduza o erro clássico.

ver esse descompasso com os próprios olhos é o que fixa a lição — lvextend e o resize do filesystem são duas camadas separadas, sempre.

```bash
sudo lvextend -L +1G /dev/vg_data/lv_app
sudo lvs
df -h /app
```

**Resultado esperado:** lvs mostra o LV maior, mas df -h ainda mostra o tamanho antigo — a armadilha reproduzida de propósito.

> **Cilada comum:** ver a mensagem de sucesso do lvextend e achar que já terminou — ela confirma só a metade do trabalho.
