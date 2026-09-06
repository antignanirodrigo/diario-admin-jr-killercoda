## Ação: Instale a ferramenta, lendo com atenção a lista antes de confirmar.

ler a lista de "será instalado" antes de confirmar é o que te dá a chance de perceber se algo além do esperado está prestes a mudar.

```bash
sudo apt install htop
```

**Resultado esperado:** lista de pacotes e dependências revisada antes da confirmação.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `sudo apt install htop` — Instala o pacote htop e suas dependências diretas, depois de listar o que será instalado para confirmação.
</details>

> **Cilada comum:** confirmar instalações com "yes" automático sem ler a lista — como quase aconteceu com o apt upgrad de hoje, digitar sem olhar é onde o erro entra.

> **Se der diferente:** "htop is already the newest version" logo no primeiro comando → provavelmente sobrou de um laboratório anterior nesta VM. Rode sudo apt remove --purge htop primeiro para começar do zero e sentir a diferença de verdade.
