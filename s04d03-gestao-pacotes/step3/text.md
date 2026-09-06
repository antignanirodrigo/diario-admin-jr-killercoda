## Ação: Confirme a instalação e a versão exata.

validar depois é o que fecha o ciclo — confirma que a versão candidata prometida é realmente a que foi instalada.

```bash
dpkg -l | grep htop
```

**Resultado esperado:** pacote listado com versão exata instalada.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `dpkg -l` — Lista todos os pacotes conhecidos pelo dpkg (gerenciador de pacotes de baixo nível) e seu estado de instalação.
- `| grep htop` — Filtra a lista para mostrar só a linha do pacote htop, com a versão exata instalada.
</details>

> **Cilada comum:** assumir que "instalou sem erro" já é suficiente, sem confirmar a versão exata que ficou registrada no sistema.
