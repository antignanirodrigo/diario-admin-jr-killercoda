## Ação: confirme a ordem de resolução configurada.

Por quê: confirmar a ordem antes de agir evita assumir "files vem primeiro" quando, numa configuração não-padrão, pode ser o contrário.

```bash
grep '^hosts:' /etc/nsswitch.conf
```

**Resultado esperado:** hosts: files dns (ou ordem equivalente confirmando a prioridade local).

<details>
<summary>🔍 Detalhar esse comando</summary>

- `grep '^hosts:'` — Procura, no início da linha (^), a diretiva hosts: dentro do arquivo — mostra a ordem configurada de resolução de nomes (ex: files antes de dns).
- `/etc/nsswitch.conf` — Arquivo que define, para várias funções do sistema, em que ordem as fontes de dados são consultadas — aqui, especificamente para resolução de nomes.
</details>

> **Cilada comum:** assumir que todo sistema Linux tem a mesma ordem em nsswitch.conf — sempre confira, não presuma.

> **Se der diferente:** Nenhuma linha retorna (grep vazio) → algumas distros usam uma sintaxe ligeiramente diferente; procure a seção inteira com cat /etc/nsswitch.conf | grep -A0 hosts ou abra o arquivo com um editor pra localizar a linha manualmente.
