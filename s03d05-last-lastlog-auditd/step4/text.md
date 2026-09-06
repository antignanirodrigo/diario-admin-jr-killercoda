## Ação: Construa uma linha do tempo cruzando as três fontes pra um único usuário de teste.

essa é a habilidade central da aula — transformar três fontes isoladas numa história única e coerente, com os horários se confirmando entre si.

```bash
# não é comando único — combine as saídas de last, lastlog e ausearch pro mesmo usuário
# ex: "08:10 login (last) → 08:13 sudo -i (auditd) → 08:15 leu /etc/shadow (auditd)"
```

**Resultado esperado:** sequência de eventos (login → ação → ação) com horários batendo entre as fontes.

> **Cilada comum:** montar a linha do tempo mas não notar quando os horários NÃO batem entre fontes — uma discrepância de horário pode ser o sinal mais importante de manipulação de log.
