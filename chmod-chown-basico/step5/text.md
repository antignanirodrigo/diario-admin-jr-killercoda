## 🧹 Cenário: remova o usuário e o arquivo de teste

Você criou `testeapp` só pra ter um dono real pra ajustar — sem remover depois, o próximo técnico encontra uma conta órfã sem propósito nenhum. Numa auditoria de segurança, cada conta sem dono claro é uma pergunta que alguém vai ter que responder.

```bash
sudo userdel testeapp
rm teste.log
```

**Resultado esperado:** usuário e arquivo removidos, servidor exatamente como estava antes da aula.

> **Se der `userdel: user testeapp is currently used by process`:** algum processo ainda referencia esse usuário. Use `sudo userdel -f testeapp` (força a remoção — só em VM de teste).
