## Ação: Remova o pacote instalado no laboratório e confirme que o servidor voltou ao estado anterior à aula.

você instalou o htop só para observar a diferença entre install e upgrade na prática — deixá-lo instalado no laboratório sem necessidade é exatamente o tipo de "pacote sobrando sem dono claro" que uma auditoria de sistema pega depois.

```bash
sudo apt remove --purge htop
dpkg -l | grep htop || echo "pacote removido"
```

**Resultado esperado:** mensagem "pacote removido" — dpkg -l não lista mais o htop.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo apt remove` — Desinstala um pacote, mas por padrão mantém arquivos de configuração no disco.
- `--purge` — Remove também os arquivos de configuração do pacote — desinstalação completa, sem deixar resíduo.
- `htop` — O pacote instalado nesta mesma aula, agora removido para deixar o sistema como estava antes.
</details>

> **Cilada comum:** esquecer de remover o pacote de teste. Meses depois, alguém revisando os pacotes instalados encontra o htop e não sabe se foi uma instalação real de produção ou sobra de laboratório.

> **Se der diferente:** "dpkg: warning: while removing htop, directory not empty" → normal se algum arquivo de configuração ficou para trás — não é erro grave, mas se quiser limpeza total use sudo apt autoremove em seguida.
