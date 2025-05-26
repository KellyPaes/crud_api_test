# 📘 Parte 2: Perguntas Teóricas

## 1. Qualidade de Software

Qualidade de software é a capacidade de um sistema atender às necessidades do usuário, de forma confiável, segura e com boa usabilidade.

O Analista de QA contribui para isso participando desde o início do desenvolvimento, garantindo que os requisitos sejam bem compreendidos e testados. Também ajuda a evitar falhas, valida cenários críticos e mantém a qualidade contínua ao longo do ciclo de vida do produto.

---

## 2. Diferença entre testes funcionais e não funcionais

- **Testes funcionais** verificam se o sistema faz o que foi especificado.  
  Exemplo: testar se um pedido é finalizado com sucesso após o clique em "comprar".

- **Testes não funcionais** analisam características como desempenho, segurança e usabilidade.  
  Exemplo: verificar se a aplicação continua funcionando bem com 1.000 usuários simultâneos.

---

## 3. QA em times ágeis

O QA está presente desde o planejamento da sprint. Atua junto com devs e POs, ajudando a definir critérios de aceite e antecipar possíveis falhas. Durante a sprint, garante que as entregas tenham qualidade e que bugs sejam identificados o quanto antes.

**Com prazos apertados:**  
Reavalio prioridades com o time, foco nos testes com maior impacto e risco, e busco alternativas como testes exploratórios rápidos. Também sugiro dividir histórias ou mover testes menos críticos para o próximo ciclo.

---

## 4. Automação de Testes

**Quando automatizar:**
- Cenários repetitivos
- Casos críticos
- Funcionalidades já estáveis

**Sobre BDD (Behavior-Driven Development):**

**Vantagens:**
- Aproxima QA, dev e PO com uma linguagem comum
- Deixa os testes mais legíveis para quem não é técnico

**Desvantagens:**
- Pode exigir esforço extra para manter os cenários organizados
- Demanda alinhamento constante entre as áreas

---

## 5. Testes de API

**Diferença:**
- **Testes de API** validam regras de negócio e integrações entre sistemas, sem interface gráfica.
- **Testes de UI** avaliam como o sistema se comporta na visão do usuário, via interface.

**Ferramentas que já usei:**  
Postman, Insomnia e Robot Framework (com RequestsLibrary).

**Exemplo real:**  
Utilizei o Postman para testar manualmente o endpoint de criação de usuários. Configurei uma requisição POST com os dados do usuário e validei o status code 201 e a estrutura da resposta JSON. Também adicionei scripts simples para verificar automaticamente o status e se o ID retornado estava no formato correto. Isso ajudou a garantir que a API estivesse funcionando antes de automatizar os testes com Robot Framework.

---

## 6. Gestão de Defeitos

**Como priorizo bugs:**
- Críticos: impedem o uso do sistema ou causam falhas graves
- Médios: têm impacto funcional, mas com contorno possível
- Baixos: não impedem o uso, como erros visuais ou ajustes

**Caso real em produção:**  
Identifiquei um bug crítico que impedia clientes de finalizarem pedidos. Reproduzi o problema, documentei com evidências claras e comuniquei o time. O defeito foi priorizado como hotfix e validei a correção assim que foi aplicada.
