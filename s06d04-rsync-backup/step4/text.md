## Ação: rode o dry-run com --delete e confirme que ele mostra exatamente o arquivo removido sendo apagado do destino também.

essa é a revisão que teria salvo a história do config/producao.conf — ver a linha "deleting" ANTES dela acontecer de verdade.

```bash
rsync -avn --delete ~/lab/origem/ ~/lab/destino/
```

**Resultado esperado:** linha "deleting style.css" aparecendo no dry-run, exatamente o arquivo que você removeu no passo anterior — nada ainda alterado de verdade.

> **Cilada comum:** ver "deleting" e entrar em pânico automático — a revisão existe pra confirmar se aquela remoção É esperada, não pra cancelar tudo por reflexo.
