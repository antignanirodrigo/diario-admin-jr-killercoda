## Ação: simule o cenário de "senha já commitada" — confirme que remover do arquivo atual não apaga o histórico do git.

Por quê: git guarda cada commit como um snapshot — remover de uma versão nova não apaga o registro das versões anteriores, sempre acessíveis via histórico.

```bash
git init teste-repo && cd teste-repo
echo 'senha=SENHA_ANTIGA_123' > config.txt && git add . && git commit -m "add config"
echo 'senha=REMOVIDA' > config.txt && git add . && git commit -m "remove senha do arquivo atual"
git log -p --all | grep SENHA_ANTIGA_123
```

**Resultado esperado:** a senha antiga aparece no histórico do git mesmo depois de removida da versão atual.
