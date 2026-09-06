## Ação: adicione o shebang como primeira linha e confirme que ./script.sh agora funciona de forma consistente.

essa é a correção exata que resolveu o mistério da história — uma única linha, e o comportamento fica previsível não importa como alguém chame o script.

```bash
sed -i '1i #!/bin/bash' teste.sh
./teste.sh
bash teste.sh
```

**Resultado esperado:** os dois comandos agora produzem exatamente o mesmo resultado — "existe".

> **Cilada comum:** colocar o shebang em qualquer lugar que não seja a primeira linha absoluta do arquivo — se vier depois de um comentário ou linha em branco, ele não é reconhecido.
