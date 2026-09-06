## Ação: rode um flush de cache controlado e consulte de novo.

Por quê: o flush controlado é a alternativa correta a esperar o TTL — resolve o mesmo problema sem alterar nenhum registro.

```bash
resolvectl flush-caches
dig app.intra.example A +short
```

**Resultado esperado:** resposta agora reflete o valor atualizado do autoritativo.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `resolvectl` — Ferramenta de controle do resolvedor DNS do systemd (systemd-resolved), presente por padrão em distros modernas baseadas em systemd.
- `flush-caches` — Descarta todas as respostas guardadas em cache pelo resolvedor local, forçando a próxima consulta a buscar a resposta de novo — sem alterar nenhum registro DNS.
- `+short` — Opção do dig que mostra só o resultado essencial (o IP), sem o cabeçalho completo da resposta — útil pra ler rápido depois de já saber interpretar a saída completa.
</details>

> **Cilada comum:** fazer flush de cache em produção sem avisar, achando que é uma operação "inofensiva" — em servidores com muito tráfego, isso gera um pico temporário de consultas ao autoritativo.

> **Se der diferente:** "resolvectl: command not found" → seu sistema não usa systemd-resolved. Alternativas: sudo systemd-resolve --flush-caches (versões antigas) ou reinicie o serviço de cache DNS que sua distro usa (ex: sudo systemctl restart nscd ). A resposta continua desatualizada mesmo depois do flush → o cache pode estar em outra camada — o navegador tem cache DNS próprio, separado do sistema operacional. Teste com dig (que ignora cache de navegador) pra confirmar se o sistema operacional já está certo.
