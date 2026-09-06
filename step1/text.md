## Ação: crie um arquivo de teste e observe suas permissões padrão

Antes de qualquer mudança, você precisa saber o estado ANTES — sem isso, um rollback depois vira chute, não reversão de verdade.

```bash
touch teste.log
ls -l teste.log
```

**Resultado esperado:** permissão padrão criada pelo seu usuário (geralmente `-rw-r--r--`).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `touch` — cria um arquivo vazio (ou atualiza a data de modificação, se já existir).
- `ls -l` — lista o arquivo em formato detalhado, mostrando as permissões padrão logo após a criação.
</details>
