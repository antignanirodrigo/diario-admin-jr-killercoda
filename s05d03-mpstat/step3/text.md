## Ação: Identifique o PID e o núcleo exato do processo de teste.

a coluna PSR é o que conecta o número frio do mpstat a um processo real e nomeável — sem ela, você sabe QUE núcleo está saturado, mas não POR QUEM.

```bash
ps -o pid,psr,pcpu,comm -C yes
```

**Resultado esperado:** PSR confirmando qual núcleo específico o processo está usando.

> **Cilada comum:** assumir que o núcleo saturado é sempre o mesmo — o kernel pode migrar processos entre núcleos ao longo do tempo, então confirme o PSR no momento certo.
