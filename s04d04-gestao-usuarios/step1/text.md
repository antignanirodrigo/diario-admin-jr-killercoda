## Ação: Crie os três grupos de teste que o laboratório vai usar, antes de tentar adicionar o usuário a eles.

usermod -aG não cria grupos, só adiciona um usuário a grupos que já existem — sem esse passo, o próximo comando falha por um motivo que não tem nada a ver com a lição de hoje.

```bash
sudo groupadd grupo1
sudo groupadd grupo2
sudo groupadd grupo3
getent group grupo1 grupo2 grupo3
```

**Resultado esperado:** os três grupos listados pelo getent, confirmando que existem antes do próximo passo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `groupadd` — Cria um novo grupo no sistema.
- `grupo1, grupo2, grupo3` — Os três grupos de teste do laboratório, criados antes de qualquer usuário ser associado a eles.
- `getent group` — Consulta a base de grupos do sistema (arquivo /etc/group ou outra fonte configurada) e confirma que os três grupos existem.
</details>

> **Cilada comum:** só em VM descartável — criar grupos de teste com nomes genéricos pode colidir com grupos reais em servidores de produção.

> **Se der diferente:** "groupadd: group 'grupo1' already exists" → sobra de uma execução anterior do laboratório — pode seguir em frente normalmente, o grupo já está pronto.
