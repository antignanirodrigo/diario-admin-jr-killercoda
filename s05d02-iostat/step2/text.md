## Ação: Gere carga de escrita de teste e observe o iostat durante a operação.

ver %util subir de propósito, sabendo a causa exata (o próprio dd), é o treino que fixa o reconhecimento desse padrão pra um chamado real.

```bash
dd if=/dev/zero of=teste.img bs=1M count=500
```

**Resultado esperado:** %util subindo visivelmente enquanto o dd está rodando.

> **Cilada comum:** rodar esse teste num disco de produção real — dd escreve pesado, sempre use um disco/VM descartável pra esse tipo de teste.
