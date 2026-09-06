## Ação: Reproduza deliberadamente o erro: rode -G sem -a e veja os outros grupos sumirem.

ver o erro acontecer de propósito, num ambiente seguro, fixa a lição de um jeito que nenhuma explicação teórica consegue — você viu os grupos sumirem com os próprios olhos.

```bash
sudo usermod -G grupo3 teste_user
id teste_user
```

**Resultado esperado:** apenas o grupo primário e o terceiro grupo restam — demonstração prática do risco.

<details>
<summary>🔍 Detalhar esse comando (a cilada)</summary>

- `usermod -G grupo3` — Sem o -a, o -G não ADICIONA — ele SUBSTITUI toda a lista de grupos secundários do usuário pela lista informada.
- `teste_user` — Resultado: teste_user perde grupo1 e grupo2 (adicionados antes) e fica só com grupo3 — um erro clássico e silencioso, sem nenhuma mensagem de aviso.
</details>

> **Cilada comum:** fazer esse teste num usuário real de produção "só pra confirmar" — sempre reproduza erros perigosos só em ambiente descartável.
