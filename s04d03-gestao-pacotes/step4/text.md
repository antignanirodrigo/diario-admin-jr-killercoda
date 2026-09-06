## Ação: Compare o que um upgrade completo afetaria, sem rodar de verdade.

ver essa lista, sem executar, deixa concreto o tamanho do raio de impacto que um upgrade teria — muito maior que o install pontual que você acabou de fazer.

```bash
apt list --upgradable
```

**Resultado esperado:** lista de pacotes que teriam sido afetados por upgrade, comparada com a instalação pontual já feita.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `apt list` — Lista pacotes conforme um critério.
- `--upgradable` — Filtra para mostrar só os pacotes que têm uma versão mais nova disponível — mostra o TAMANHO do impacto que um 'apt upgrade' teria, sem executar nada.
</details>

> **Cilada comum:** rodar apt upgrade "só pra ver o que aconteceria" em VM que não é totalmente descartável — mesmo curiosidade merece ambiente isolado.
