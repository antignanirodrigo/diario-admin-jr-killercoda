## Ação: Anote o UUID de cada partição montada.

UUID é a identidade estável de uma partição — nomes como /dev/sda1 podem mudar entre boots, o UUID nunca muda, por isso é o que se usa em configurações permanentes.

```bash
blkid
```

**Resultado esperado:** lista de UUIDs, prontos pra referência futura em fstab.

> **Cilada comum:** anotar o nome do dispositivo (/dev/sda1) em vez do UUID pra uso futuro em configuração — nomes de dispositivo não são garantidamente estáveis entre reinicializações.
