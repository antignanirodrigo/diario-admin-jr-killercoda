## Ação: inicie um processo de teste de carga e observe seu uso de CPU.

ter um processo de carga controlado, gerado por você, é o que permite praticar renice sem afetar nada de importante.

```bash
yes > /dev/null &
top
```

**Resultado esperado:** processo consumindo CPU alta, visível no top.

> **Cilada comum:** esquecer esse processo rodando depois do lab — ele consome CPU indefinidamente até ser encerrado.
