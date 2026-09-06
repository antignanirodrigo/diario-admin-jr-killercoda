## Ação: Atualize a lista de pacotes e verifique a versão candidata de uma ferramenta ainda não instalada.

ver a versão ANTES de instalar é o que permite confirmar que você vai receber o que espera, sem surpresas depois.

```bash
sudo apt update
apt policy htop
```

**Resultado esperado:** versão candidata mostrada, nada ainda instalado.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo apt update` — Atualiza a lista local de pacotes disponíveis a partir dos repositórios configurados — não instala nem atualiza nada ainda.
- `apt policy htop` — Mostra a versão instalada (se houver) e a versão candidata disponível para instalação do pacote htop.
</details>

> **Cilada comum:** pular o apt update achando que a lista de pacotes já está atualizada — sem isso, apt policy pode mostrar informação desatualizada.
