## Ação: Apague o arquivo e o diretório de teste, devolvendo a VM ao estado anterior.

mesmo um teste simples de chown pode deixar um arquivo com dono "órfão" (UID sem nome) esquecido na VM — o tipo de coisa que confunde uma auditoria de disco meses depois.

```bash
sudo rm -rf /dados/uploads
ls /dados/uploads 2>/dev/null || echo "diretorio de teste removido"
```

**Resultado esperado:** a mensagem "diretorio de teste removido" confirma que nada ficou pra trás.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `rm -rf /dados/uploads` — Remove recursivamente o diretório e o arquivo de teste criados no primeiro passo do laboratório.
- `ls /dados/uploads 2>/dev/null` — Tenta listar o diretório já removido, descartando a mensagem de erro esperada.
- `|| echo "diretorio de teste removido"` — Mostra essa mensagem só quando o ls anterior falha, confirmando visualmente que a remoção funcionou.
</details>

> **Cilada comum:** se você também criou usuários reais de teste numa segunda VM pra reproduzir o cenário completo, lembre de rodar userdel -r neles lá também — este teardown cobre só esta VM.
