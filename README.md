# ✅ Desafio de Automação de Testes de API — Avaliação QA

Este projeto entrega o Desafio 1 da avaliação prática de QA, que consiste na automação de testes para uma API REST utilizando Robot Framework.

---

## 📌 Descrição

Automação do fluxo completo de um CRUD (Create, Read, Update, Delete), com validações de status HTTP e dos dados retornados.  
A API utilizada é a CRUD CRUD (https://crudcrud.com/), uma ferramenta pública e temporária para testes de APIs.

---

## ⚠️ Aviso Importante sobre a API Pública Utilizada

Este projeto utiliza a API pública temporária do [crudcrud.com](https://crudcrud.com), que mantém os dados criados por aproximadamente **24 horas**, após esse período os dados expiram e são removidos automaticamente.

Para garantir o funcionamento correto durante a avaliação:

- Os dados foram criados na URL da API pouco antes da entrega.
- Recomendamos que o avaliador realize os testes **o mais rápido possível** após receber o projeto, pois os dados estarão válidos por apenas 24 horas.
- Caso os dados expirem antes do teste, o avaliador poderá recriar os dados utilizando a interface do sistema (se disponível) ou entrar em contato para receber uma nova URL válida.

Agradeço pela compreensão e estou à disposição para qualquer dúvida.

---


## 🚀 Tecnologias e Ferramentas Utilizadas

- Robot Framework  
- RequestsLibrary (biblioteca de testes HTTP para Robot)  
- Python 3.10 ou superior  
- Ambiente virtual com `venv` (opcional, mas recomendado)

---

## 📁 Estrutura do Projeto

crud_api_test/
├── docs/
│ └── desafio_resolucao_problema.md
│ └── respostas_teoricas.md
├── output/
│ ├── log.html
│ └── output.xml
│ └── report.html
├── tests/
│ └── crud_api_tests.robot
├── venv/
├── README.md
└── requirements.txt

---

## ▶️ Como Executar os Testes

Siga os passos abaixo para preparar seu ambiente e executar os testes automatizados usando Robot Framework.

1. Verifique se o Python está instalado.  
   O projeto exige Python 3.10 ou superior. Para verificar, abra o terminal e digite: `python --version`.  
   Se não estiver instalado, baixe do site oficial: www.python.org.

2. (Opcional, mas recomendado) Crie um ambiente virtual para isolar as dependências.  
   No Windows, use os comandos: `python -m venv venv` e depois `venv\Scripts\activate`.  
   No Linux ou macOS: `python3 -m venv venv` e `source venv/bin/activate`.

3. Instale as bibliotecas necessárias executando o comando: `pip install -r requirements.txt`.

4. Para rodar os testes, execute o seguinte comando na raiz do projeto:  
   `robot -d output tests/crud_api_tests.robot`.  
   Isso executará o script e salvará os relatórios na pasta `output`.

5. Após a execução, abra os arquivos dentro da pasta `output`:  
   - `log.html`: log detalhado dos testes  
   - `report.html`: relatório geral da execução  
   - `output.xml`: resultado técnico dos testes

6. (Opcional) Para apagar os relatórios antigos antes de uma nova execução:  
   No Windows, use o comando: `rmdir /s /q output`.  
   No Linux ou macOS: `rm -rf output`.  
   Em seguida, repita o passo 4 para rodar os testes novamente.

---

## 📊 O que foi implementado

- Criação de um recurso (POST)  
- Leitura do recurso criado (GET)  
- Atualização do recurso (PUT)  
- Exclusão do recurso (DELETE)  
- Validação dos status codes (201, 200, 204 e 404)  
- Validação dos dados enviados e retornados  
- Tratamento para o erro 404 ao tentar acessar um recurso deletado  

---

## ⚠️ Pendências e Melhorias Futuras

- Os testes geram um aviso de segurança (`InsecureRequestWarning`) devido à ausência de certificado SSL na API usada.  
- Os dados usados nos testes são fixos (exemplo: "Caneca"). Em projetos reais, seria interessante parametrizar.  
- Não foram implementados testes negativos (como campos inválidos ou ausentes).  
- A URL da API está fixa no código. Em um ambiente real, o ideal seria parametrizá-la com variáveis de ambiente.

---

## 📑 Parte 2 da Avaliação

As respostas para o Desafio 2 (Resolução de Problemas) e as Perguntas Teóricas estão disponíveis na pasta `docs/`:

- desafio_2_resolucao_problema.md  
- respostas_teoricas.md

---

## 👩‍💻 Sobre a autora

Kel — profissional na área de QA com foco em testes automatizados, qualidade de software e APIs REST.  
Projeto desenvolvido como parte de uma avaliação técnica para a vaga de Analista QA.
