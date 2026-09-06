## Ação: Na saída de id , identifique qual grupo daria a você poder de virar root com sudo .

estar listado num grupo é autorização, não identidade ativa — sua sessão não muda de dono só por você pertencer ao grupo certo.

```bash
id
```

**Resultado esperado:** o grupo sudo (ou wheel , em algumas distros) aparece listado, mas você continua logado como seu usuário normal.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `id` — Mostra UID (identificador numérico do usuário), GID (grupo primário) e a lista de todos os grupos secundários aos quais a conta pertence.
</details>

> **Cilada comum:** ver sudo na lista de grupos e responder "sim, sou root" pro colega. Pertencer ao grupo não é a mesma coisa que estar rodando como root agora.
