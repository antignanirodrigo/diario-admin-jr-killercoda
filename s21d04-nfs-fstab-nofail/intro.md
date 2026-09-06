## 🎫 #2104 · PRIORIDADE ALTA · 07:50 · aberto por: plantão de infraestrutura

**host: múltiplos clientes NFS · serviço: boot de servidores dependentes de /etc/fstab**

> "Adicionei o NFS no fstab pra montar sempre no boot. Ontem o servidor NFS ficou fora do ar por manutenção, e TODOS os clientes que dependiam dele travaram no boot, mesmo os que não precisavam do NFS pra nada crítico."

O fstab tentou montar rede antes da rede estar pronta. O que falta na linha?
