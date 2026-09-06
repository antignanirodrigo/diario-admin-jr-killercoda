## Ação: Crie o problema antes de resolvê-lo — o alerta do chamado precisa existir na SUA máquina, senão você lê sobre incêndio em vez de apagar um.

medir um disco saudável não ensina nada — os números não batem com o exemplo e a sensação de urgência não existe. Criando o problema você vê a variação real, que é o que o olho precisa aprender a reconhecer.

```bash
df -h /                                  # anote o % ANTES
sudo fallocate -l 3G /var/log/teste-disco-cheio.log
df -h /                                  # compare: subiu quanto?
```

**Resultado esperado:** o percentual de uso da partição / sobe visivelmente entre o primeiro e o segundo df . Agora você tem o mesmo sintoma do chamado #4471, na sua VM.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo` — Necessário para escrever em /var/log, que normalmente pertence a root.
- `fallocate` — Reserva espaço em disco para um arquivo instantaneamente, sem precisar escrever os dados de verdade — forma rápida de simular um arquivo grande.
- `-l 3G` — Define o tamanho do arquivo a alocar: 3 gigabytes.
- `/var/log/teste-disco-cheio.log` — O arquivo de teste criado só para simular o sintoma de disco cheio, apagado no final da aula.
</details>

> **Cilada comum:** rodar isso em máquina de produção ou no seu PC principal. Só em VM descartável. E anote o nome do arquivo — você vai apagá-lo no último passo.

> **Se der diferente:** "fallocate: command not found" → use sudo dd if=/dev/zero of=/var/log/teste-disco-cheio.log bs=1M count=3000 (mais lento, mesmo efeito). O % não subiu nada → seu /var provavelmente é uma partição separada. Rode df -h /var e observe essa linha em vez da / . "No space left on device" → o disco já estava mais cheio do que você imaginava; reduza para -l 500M . Isso já é um achado: sua VM merece um du antes mesmo do exercício.
