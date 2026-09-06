## Ação: Crie um serviço de teste que falha de propósito — sem um serviço quebrado de verdade, systemctl status e journalctl não têm o que te mostrar.

ler o status de um serviço saudável ensina pouco. É no estado failed que aparecem as linhas que realmente importam — Active: failed , o código de saída e as últimas linhas do log.

```bash
sudo tee /etc/systemd/system/teste-jr.service >/dev/null <<'EOF'
[Unit]
Description=Servico de teste do Admin Jr
[Service]
Type=oneshot
ExecStart=/bin/false
EOF
sudo systemctl daemon-reload
sudo systemctl start teste-jr.service     # vai falhar — é esse o objetivo
```

**Resultado esperado:** o start retorna erro dizendo que o serviço falhou. Perfeito: agora existe um serviço em estado failed para você investigar como investigaria em produção.

<details>
<summary>🔍 Detalhar essa sintaxe</summary>

- `sudo` — Necessário porque /etc/systemd/system pertence a root.
- `tee` — Escreve a entrada padrão tanto num arquivo quanto na tela — usado aqui só para gravar, porque a saída na tela é descartada em seguida.
- `>/dev/null` — Descarta a cópia que o tee normalmente mostraria na tela — só interessa o arquivo gravado.
- `<<'EOF'` — Início de um 'heredoc': tudo que vem depois, até a linha que contém só 'EOF', é tratado como um bloco de texto só, entregue como entrada para o tee — é como colar um arquivo inteiro de uma vez no terminal.
</details>

> **Cilada comum:** criar isso em servidor de produção. Só em VM descartável. O arquivo fica em /etc/systemd/system/ — anote, você vai removê-lo no último passo.

> **Se der diferente:** "tee: /etc/systemd/system/...: Permission denied" → o sudo precisa estar no tee , não no echo — é por isso que o comando está escrito nessa ordem. Copie-o inteiro. "Failed to start teste-jr.service: Unit not found" → faltou o sudo systemctl daemon-reload depois de criar o arquivo. O systemd só enxerga units novas após recarregar. O serviço iniciou com sucesso (não falhou) → confira se o ExecStart aponta para /bin/false . Se o seu sistema não tiver esse caminho, use /usr/bin/false .
