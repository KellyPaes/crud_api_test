# 🧩 Desafio 2: Resolução de Problemas

## 💡 Cenário

Durante os testes, percebi que o sistema não aplicava o desconto de 10% para compras acima de R$ 100,00. O desenvolvedor, porém, disse que o código estava funcionando corretamente.

---

## ✅ Como eu investigaria esse defeito

1. **Confirmar a regra com o time de produto**  
   Antes de tudo, eu me certificaria com o PO ou na documentação sobre como o desconto deve funcionar.  
   Por exemplo: é sobre o total da compra ou só sobre os produtos? Inclui frete?

2. **Testar na prática com diferentes valores**  
   Criaria pedidos com valores perto do limite (R$ 99,99, R$ 100,00 e R$ 100,01) e compararia o valor total com e sem o desconto.

3. **Analisar logs ou chamadas da API**  
   Se possível, revisaria logs ou respostas de API para ver como o sistema está calculando o valor total. Isso pode mostrar se o cálculo está correto ou não.

---

## 📋 Informações que eu reuniria

- Pedido com valor acima de R$ 100,00 que não recebeu desconto  
- Prints, logs ou resposta de API mostrando o valor esperado vs. valor real  
- Lista de itens, valor total e valor do desconto (ou ausência dele)  
- Ambiente onde o teste foi feito (QA, dev, homologação)

---

## 📣 Como comunicaria o problema

### Para o desenvolvedor:
- Descreveria o cenário completo (entrada, comportamento esperado e comportamento atual)  
- Enviaria prints ou requisições de API mostrando a diferença  
- Evitaria frases vagas como “acho que não funcionou” e diria algo como:  
  “Neste pedido de R$ 120,00, o desconto esperado era R$ 12,00, mas nenhum desconto foi aplicado.”

### Para o Product Owner:
- Explicaria o impacto para o cliente: pagar mais do que deveria  
- Sugeriria classificar o defeito como bloqueador ou de prioridade alta  
- Daria uma ideia do escopo e da urgência com base nos testes feitos

---

## 🧠 Conclusão

Mesmo que o código esteja “funcionando”, pode estar funcionando fora da regra esperada.  
O papel do QA é justamente verificar isso com base nos requisitos, reproduzir com evidências e comunicar com clareza.
