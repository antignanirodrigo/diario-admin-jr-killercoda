## Ação: Gere uma carga single-thread e observe qual núcleo ela satura.

ver esse padrão acontecer de propósito, sabendo a causa exata, é o que fixa o reconhecimento pra quando aparecer sem aviso num chamado real.

```bash
yes > /dev/null &
```

**Resultado esperado:** um único núcleo saturado em ~100%, os outros permanecendo tranquilos.

> **Cilada comum:** esquecer de encerrar o processo yes depois do teste — ele continua consumindo um núcleo indefinidamente até você matá-lo.
