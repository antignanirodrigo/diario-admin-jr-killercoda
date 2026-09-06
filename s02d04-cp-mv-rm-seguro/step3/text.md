## Ação: Faça backup da pasta de teste antes de tocar nela.

rm não tem lixeira — o backup É o rollback. Sem esse passo, não existe "desfazer" possível depois.

```bash
tar -czf backup_teste.tgz teste_cache/
ls -lh backup_teste.tgz
```

**Resultado esperado:** arquivo backup_teste.tgz criado, confirmado com ls -lh.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `tar` — Empacota (e opcionalmente compacta) arquivos e pastas num único arquivo.
- `-c` — Cria um novo pacote (create), em vez de extrair um existente.
- `-z` — Comprime o resultado com gzip — é o que dá a extensão .tgz (tar + gzip).
- `-f backup_teste.tgz` — Define o nome do arquivo de saída; sem -f, o tar escreveria no terminal em vez de num arquivo.
- `teste_cache/` — A pasta sendo empacotada.
</details>

> **Cilada comum:** fazer o backup mas não confirmar que ele realmente foi criado com conteúdo (ls -lh mostrando tamanho > 0) — um backup vazio ou corrompido dá falsa sensação de segurança.

> **Se der diferente:** "tar: teste_cache/: Cannot stat: No such file or directory" → você não está na pasta onde criou teste_cache . Confira com pwd e ls antes de repetir o comando.
