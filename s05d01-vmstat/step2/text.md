## Ação: Gere pressão de memória controlada e observe o vmstat mudar em tempo real.

ver so subir de propósito, sabendo a causa exata (o próprio teste), é o que fixa o reconhecimento desse padrão pra quando aparecer sem aviso num chamado real.

```bash
stress-ng --vm 2 --vm-bytes 80% --timeout 30s
```

**Resultado esperado:** so subindo visivelmente durante o teste, confirmando o padrão de pressão.

> **Cilada comum:** usar --vm-bytes muito próximo de 100% numa VM pequena — pode travar a VM de teste; use uma margem de segurança.
