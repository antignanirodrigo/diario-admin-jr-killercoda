## Ação: explore outros arquivos disponíveis dentro de /proc/PID/ sem alterar nada.

saber que /proc tem muito mais que status é o que te prepara pra investigações mais profundas no futuro — cwd e fd, por exemplo, ajudam a entender o que um processo suspeito está realmente acessando.

```bash
ls /proc/<PID>/
cat /proc/<PID>/cwd 2>/dev/null
ls /proc/<PID>/fd
```

**Resultado esperado:** familiaridade com a estrutura de /proc além do status — cwd (diretório de trabalho), fd (arquivos abertos), environ (variáveis de ambiente).

> **Cilada comum:** tentar acessar /proc/PID de um processo de outro usuário sem sudo — vários arquivos ali exigem privilégio elevado pra leitura, por conterem informação sensível.
