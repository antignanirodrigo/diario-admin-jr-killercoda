## Ação: adicione uma entrada errada em /etc/hosts para um nome que também existe no DNS.

Por quê: reproduzir a divergência de propósito é o que te deixa reconhecer o padrão da próxima vez que vir um caso real.

```bash
echo "192.168.10.99  app.intra.example" | sudo tee -a /etc/hosts
```

**Resultado esperado:** resolução local criada, diferente do DNS real.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `echo "IP nome"` — Gera a linha de texto no formato que /etc/hosts espera: endereço seguido do nome.
- `| sudo tee -a /etc/hosts` — Envia essa linha para o final (-a, append) do arquivo /etc/hosts, usando sudo — o tee é necessário aqui porque um simples >> com sudo não teria permissão de escrita no arquivo protegido.
</details>

> **Cilada comum:** esquecer que essa entrada de teste fica lá depois do laboratório — sempre limpe /etc/hosts ao final.
