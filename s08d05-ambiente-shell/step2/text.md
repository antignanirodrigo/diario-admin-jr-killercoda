## Ação: crie um script de teste fora do PATH e reproduza o sintoma do chamado.

reproduzir o erro de propósito, num script que você mesmo criou, é o que te deixa pronto pra reconhecer esse padrão exato quando aparecer de verdade num chamado real.

```bash
mkdir -p ~/scripts_teste
echo 'echo ola' > ~/scripts_teste/meuscript.sh
chmod +x ~/scripts_teste/meuscript.sh
meuscript.sh
```

**Resultado esperado:** "command not found", reproduzindo exatamente o sintoma da história de hoje.

> **Cilada comum:** confundir "arquivo não executável" (falta chmod +x) com "problema de PATH" — são causas diferentes pro mesmo tipo de erro, sempre confirme as duas possibilidades.
