## Ação: crie um alias simples e teste depois de aplicar.

alias é outro tipo de personalização permanente do .bashrc — junto com PATH, fecha o entendimento completo do ambiente de shell antes da Semana 9.

```bash
echo "alias ll='ls -la'" >> ~/.bashrc
source ~/.bashrc
ll
```

**Resultado esperado:** ll funcionando como atalho pra ls -la, sem precisar digitar o comando completo.

> **Cilada comum:** criar um alias com o mesmo nome de um comando já existente sem perceber — isso pode sobrescrever silenciosamente o comportamento esperado daquele comando.
