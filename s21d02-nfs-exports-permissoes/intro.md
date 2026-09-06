## 🎫 #2102 · PRIORIDADE ALTA · 11:40 · aberto por: segurança da informação

**host: srv-files-04 · serviço: compartilhamento NFS de uploads**

> "Exportei /dados/uploads pra rede inteira com permissão de escrita — e agora qualquer máquina que se conectar na rede, inclusive convidados do Wi-Fi, consegue apagar arquivos dos outros."

O problema está no /etc/exports. O que você corrige primeiro?
