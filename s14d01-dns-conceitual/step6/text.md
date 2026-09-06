## Ação: Remova a zona de teste do dnsmasq criada no laboratório de hoje, pra não deixar um servidor DNS de brinquedo respondendo indefinidamente na VM.

uma zona de teste esquecida é exatamente o tipo de "atalho local esquecido" que a Semana 14 vai explorar em detalhe no Dia 3 — fechar o ciclo hoje evita criar esse problema sem querer.

```bash
sudo sed -i '/app.empresa.local/d' /etc/dnsmasq.conf
sudo systemctl restart dnsmasq
dig @127.0.0.1 app.empresa.local A +short
```

**Resultado esperado:** a última consulta não retorna mais nenhum IP pra esse nome — a zona de teste foi removida e o dnsmasq voltou ao estado anterior à aula.

<details>
<summary>🔍 Detalhar este cenário</summary>

- `sed -i '/app.empresa.local/d' arquivo` — Remove, diretamente no arquivo (-i), toda linha que contém o padrão indicado — aqui apaga a linha de zona de teste adicionada no laboratório.
- `systemctl restart dnsmasq` — Recarrega o serviço para que a remoção na configuração entre em vigor — editar o arquivo sozinho não é suficiente.
- `dig @127.0.0.1 ... +short` — Consulta o próprio resolvedor local (@127.0.0.1) e mostra só o resultado essencial (+short) — confirma que a zona de teste não responde mais.
</details>

> **Cilada comum:** esquecer de reiniciar o dnsmasq depois do sed — a edição no arquivo não entra em vigor sozinha, o serviço precisa recarregar a configuração.

> **Se der diferente:** dnsmasq não reinicia ("Failed to restart dnsmasq.service") → confira a sintaxe do arquivo com sudo dnsmasq --test antes de reiniciar — um sed mal ajustado pode ter deixado uma linha quebrada.
