## Ação: crie um arquivo de teste com uma palavra repetida, inclusive duas vezes na mesma linha.

incluir de propósito uma linha com múltiplas ocorrências é o que te prepara pra observar o comportamento real do /g, evitando o susto do colega da história.

```bash
cat > teste.conf << 'EOF'
server_port=porta_antiga
backup_port=porta_antiga
# comentario: porta_antiga era usada antes, agora é porta_antiga tambem aqui
EOF
```

**Resultado esperado:** arquivo pronto pra testar substituição, com uma linha (o comentário) tendo "porta_antiga" duas vezes.

> **Cilada comum:** testar só com linhas de uma ocorrência cada — assim você nunca descobre o comportamento de sed sem /g até encontrar isso em produção.
