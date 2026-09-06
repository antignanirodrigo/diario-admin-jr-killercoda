## 🔓 O que você desbloqueou hoje

Você resolveu o Ticket #4650 sem recorrer a `chmod 777`: identificou o dono real com `chown`, aplicou a permissão mínima com `chmod 640`, viu o risco de 777 de perto (sem deixar aberto), e deixou o servidor limpo no final.

**Antes de fechar, documente mentalmente** (no trabalho real, isso vai pro chamado):
- Dono antes → dono depois
- Permissão antes → permissão depois
- Motivo da mudança

Esse registro é o que permite qualquer pessoa (inclusive você, meses depois) entender por que a permissão está do jeito que está, sem precisar adivinhar.

**Amanhã:** grep e find — duas ferramentas, dois problemas diferentes.
