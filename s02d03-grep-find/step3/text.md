## Ação: Filtre arquivos por nome e depois por data de modificação.

find responde uma pergunta diferente de grep — não "o que tem escrito", mas "quais arquivos existem e quando mudaram". Confundir os dois é o erro mais comum de quem está aprendendo.

```bash
find . -name "*.log"
find . -name "*.log" -mtime -1
```

**Resultado esperado:** lista dos arquivos .log criados recentemente.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `find .` — Busca arquivos a partir da pasta atual, percorrendo subpastas.
- `-name "*.log"` — Filtra só arquivos cujo nome termina em .log — o asterisco é curinga para qualquer nome antes da extensão.
- `-mtime -1` — Filtra por data de modificação: o sinal de menos significa 'modificado há menos de 1 dia'.
</details>

> **Cilada comum:** usar find -name esperando que ele encontre texto DENTRO do arquivo — find nunca olha conteúdo, só metadados (nome, data, tamanho).

> **Se der diferente:** find não retorna os arquivos que você acabou de criar → -mtime -1 significa "modificado nas últimas 24h" — se o relógio da VM estiver desalinhado isso pode falhar. Teste primeiro sem o filtro: find . -name "*.log" , pra confirmar que os arquivos existem.
