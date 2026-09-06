## Ação: crie uma pasta de origem com alguns arquivos de teste, e uma pasta de destino vazia.

testar rsync num ambiente descartável, isolado, é o que permite errar de propósito sem risco — inclusive testar o próprio --delete sem medo.

```bash
mkdir -p ~/lab/origem ~/lab/destino
touch ~/lab/origem/index.html ~/lab/origem/style.css
```

**Resultado esperado:** duas pastas criadas, uma com conteúdo, outra vazia.

> **Cilada comum:** pular direto pra um diretório real do sistema pra "economizar tempo" — sempre pratique flags destrutivas num ambiente de teste primeiro.
