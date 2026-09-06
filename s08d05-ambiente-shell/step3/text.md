## Ação: adicione essa pasta ao PATH de forma permanente e aplique sem reiniciar o terminal.

essa é exatamente a correção permanente que resolveu o chamado da história — editar .bashrc, não só remendar a sessão atual com export solto.

```bash
echo 'export PATH=$PATH:~/scripts_teste' >> ~/.bashrc
source ~/.bashrc
meuscript.sh
```

**Resultado esperado:** "ola" impresso na tela — o script agora executável só pelo nome, sem caminho completo.

> **Cilada comum:** rodar só o export no terminal, sem editar o .bashrc — funciona até você fechar essa sessão, e o problema "volta" no próximo terminal.
