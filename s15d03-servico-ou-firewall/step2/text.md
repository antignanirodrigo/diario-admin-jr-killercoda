## Ação: aplique um firewall com policy drop sem regra pra essa porta e teste o acesso remoto.

Por quê: ver o timeout acontecer com o serviço confirmadamente saudável é o que prova, na prática, que as duas causas (serviço, firewall) são independentes.

```bash
sudo nft add rule inet filter input drop
nc -zv 127.0.0.1 8080
```

**Resultado esperado:** timeout, mesmo com o serviço saudável e escutando.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `nft add rule inet filter input drop` — Adiciona uma regra que descarta TODO tráfego de entrada, sem exceção de porta — reproduz de propósito o cenário de firewall bloqueando um serviço saudável.
- `nc -zv 127.0.0.1 8080` — Testa a mesma porta que estava funcionando antes — agora deve dar timeout, mesmo com o serviço continuando saudável.
</details>

> **Cilada comum:** ver o timeout e concluir "o serviço caiu" sem checar de novo com ss — o serviço nunca parou, só o caminho até ele foi bloqueado.

> **Se der diferente:** O nc -zv 127.0.0.1 8080 continua funcionando mesmo depois do drop → testar contra 127.0.0.1 (localhost) frequentemente não passa pela mesma chain que tráfego de rede externo — para reproduzir o timeout de verdade, teste a partir de outra VM na rede, usando o IP real da interface.
