## Ação: refatore criando uma função que recebe o que varia como argumento.

essa é a refatoração exata que teria evitado o bug da história — agora existe um único lugar pra corrigir, não três.

```bash
cat > teste2.sh << 'EOF'
#!/bin/bash
verificar_arquivo() {
  local arq="$1"
  echo "verificando $arq"
  [ -f "$arq" ] && echo "existe" || echo "faltando"
}
verificar_arquivo app.log
verificar_arquivo erro.log
EOF
chmod +x teste2.sh && ./teste2.sh
```

**Resultado esperado:** uma função só, chamada duas vezes com argumentos diferentes, produzindo o mesmo resultado do script duplicado.

> **Cilada comum:** esquecer o local antes da variável dentro da função — sem ele, a variável vaza pro escopo externo, podendo conflitar com outra variável de mesmo nome no resto do script.
