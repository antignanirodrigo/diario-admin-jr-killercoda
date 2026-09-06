## Ação: aplique a permissão mínima (640) e confirme

640 é o exemplo prático do menor privilégio: dono lê/escreve (o que ele precisa), grupo só lê (se fizer sentido), outros nada (porque não precisam).

```bash
chmod 640 teste.log
ls -l teste.log
```

**Resultado esperado:** `-rw-r-----` exatamente, sem permissão nenhuma para "outros".

<details>
<summary>🔍 Detalhar essa permissão octal</summary>

- **6** (dono) = 4 (leitura) + 2 (escrita) — ler e escrever, sem executar.
- **4** (grupo) = só leitura.
- **0** (outros) = nenhum acesso.
</details>

> **Cilada comum:** confundir 640 com 740 de cabeça — a diferença é a permissão de EXECUÇÃO do dono, que um arquivo de log nunca deveria ter.
