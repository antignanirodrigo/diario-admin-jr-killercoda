## 🎫 Ticket #4650 — PRIORIDADE MÉDIA — 11:30

**Aberto por:** desenvolvedor da aplicação
**Host:** srv-app-03 · serviço: aplicação — gravação de log

> "Não consigo gravar em app.log. A tela mostra 'Permission denied'."

Seu primeiro instinto é digitar `chmod 777` pra resolver rápido. O sênior já avisou: **777 não é solução, é ausência de uma.**

O que você faz?

---

Neste laboratório você vai reproduzir o cenário com um arquivo de teste (`teste.log`), sem risco — e aplicar o menor privilégio necessário, na ordem certa: **observar → corrigir o dono → aplicar a permissão mínima**.
