## Ação: Remova o arquivo de teste e confirme o retorno ao normal.

validar o retorno ao normal prova que a causa identificada era realmente a certa — se %util não baixasse, a causa real seria outra.

```bash
rm teste.img
iostat -x 2
```

**Resultado esperado:** valores retornando à linha de base do passo 1.

> **Cilada comum:** esquecer de confirmar o retorno ao normal — sem essa validação, você fecha o laboratório sem prova de que entendeu a causa corretamente.
