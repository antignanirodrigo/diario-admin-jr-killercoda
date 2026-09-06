## Ação: Rode iostat em estado normal e anote os valores de referência.

ter o baseline de %util/await é o que permite reconhecer rápido quando um disco real está saturado — sem essa referência, não dá pra saber o que é "alto".

```bash
sudo apt install sysstat
iostat -x 2
```

**Resultado esperado:** valores baixos de %util e await em estado saudável.

> **Cilada comum:** olhar só a primeira linha do iostat, que é a média desde o boot, não o estado atual — as linhas seguintes é que mostram o momento real.
