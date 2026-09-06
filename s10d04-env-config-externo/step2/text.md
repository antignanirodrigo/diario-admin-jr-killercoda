## Ação: crie um arquivo de configuração separado com a credencial fictícia e proteja com chmod 600.

Por quê: mover a credencial pra um arquivo sozinho não protege nada — sem chmod 600, qualquer usuário ainda pode ler o conteúdo diretamente.

```bash
cat > /tmp/teste_creds.cnf <<'EOF'
[client]
user=backup
password=SENHA_FICTICIA_123
EOF
chmod 600 /tmp/teste_creds.cnf
ls -l /tmp/teste_creds.cnf
-rw------- 1 usr usr 48 /tmp/teste_creds.cnf
```

**Resultado esperado:** -rw------- confirmado, só o dono com acesso ao arquivo.
