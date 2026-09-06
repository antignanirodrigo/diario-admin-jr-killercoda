## Ação: Detalhe a tabela de partições de cada disco.

fdisk -l confirma tamanhos exatos e tipos que o lsblk resume — é a segunda fonte que valida a primeira, mesmo princípio de evidência cruzada já usado antes.

```bash
sudo fdisk -l
```

**Resultado esperado:** tabela de partições detalhada, confirmando o que o lsblk já mostrou.

> **Cilada comum:** rodar fdisk SEM o -l por engano — isso abre o modo interativo de EDIÇÃO de partições, arriscado quando a intenção era só consultar.
