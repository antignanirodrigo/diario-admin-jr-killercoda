## Ação: Instale o sysstat e confirme que a coleta está ativa.

sem essa instalação, não existe "gravação" nenhuma acontecendo — é literalmente o pré-requisito de tudo que vem depois na aula de hoje.

```bash
sudo apt install sysstat
systemctl status sysstat
```

**Resultado esperado:** pacote instalado, serviço sysstat/sadc rodando.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo apt install sysstat` — Instala o pacote sysstat, que contém o sar e o coletor de dados sadc.
- `systemctl status sysstat` — Confirma que o serviço/timer de coleta está ativo.
</details>

> **Cilada comum:** assumir que sysstat já vem pronto por padrão, como o colega da história de hoje — na maioria das distros, precisa ser instalado e ativado manualmente.
