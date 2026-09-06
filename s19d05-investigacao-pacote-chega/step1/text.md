## Ação: Prepare duas VMs de laboratório (cliente e servidor) com um serviço simples ativo numa porta conhecida.

```bash
python3 -m http.server 8080
```

**Resultado esperado:** as duas VMs conseguindo se comunicar normalmente antes do teste.

<details>
<summary>🔍 Detalhar esse comando</summary>

- `python3 -m http.server 8080` — Sobe um servidor HTTP simples embutido no Python, servindo o diretório atual na porta 8080 — usado aqui só como serviço de teste pra gerar tráfego real.
</details>

> **Se der diferente:** "bash: python3: command not found" → use python -m http.server 8080 (algumas distros ainda mapeiam python pra Python 3), ou instale com sudo apt install python3 .
