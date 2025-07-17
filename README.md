# 🤖 Desafio de Automação de Testes - QA Jr. | Panda Vídeo

**Thomás Sousa Causin Alves – Analista de QA Jr**

Este repositório contém a automação de testes frontend desenvolvida com **Robot Framework** e **SeleniumLibrary** (uma biblioteca que permite ao Robot Framework interagir com navegadores em testes frontend), como parte do segundo desafio prático para a vaga de QA Jr. da **Panda Vídeo**.

Os testes foram aplicados ao site **[Sauce Demo](https://www.saucedemo.com/)**, uma aplicação web simulada ideal para validar fluxos completos de e-commerce.

---

## 🧪 Funcionalidades Automatizadas

Os seguintes fluxos foram implementados com sucesso:

1. **Login com usuário válido**
2. **Adição de produto ao carrinho**
3. **Finalização de uma compra com preenchimento de dados**

Cada fluxo foi testado de forma independente e também integrada, com validações visuais e funcionais em cada etapa.

---

## 💻 Tecnologias Utilizadas

- **Python 3.13.3**
- **Robot Framework**
- **SeleniumLibrary**
- **Google Chrome**
- **ChromeDriver**

---

## 📁 Estrutura do Projeto

saucedemo-robot-panda/
├── tests/
│ ├── login.robot # Teste de login
│ ├── add_to_cart.robot # Teste de adição ao carrinho
│ └── checkout.robot # Teste de compra completa
├── output.xml # Relatório de execução (XML)
├── log.html # Relatório detalhado da execução
├── report.html # Relatório geral dos testes
├── requirements.txt # Lista de dependências
└── README.md # Este arquivo

### 📁 Estrutura e Organização Adiciona

O projeto também conta com um arquivo `resources/keywords.robot`, coloquei ele só para mostrar que é possível fazer melhorias no código no futuro. Mas explicando a utilidade dele seria para centralizar palavras-chave personalizadas, variáveis ou setups que podem ser compartilhados entre múltiplos testes. Isso é bom quando temos muitos testes e queremos evitar repetição, ou precisamos reaproveitar fluxos como login, logout, setup, etc. Também pode ser bem útil para projetos a longo prazo e para mais de uma equipe. Enfim, coloquei só como um extra isso, mas não interfere em nada no código também não.

---

## ⚙️ Como Rodar o Projeto do Zero

### 📌 1. Pré-requisitos

Certifique-se de ter os seguintes itens instalados no seu computador:

- [Python 3](https://www.python.org/downloads/)
- [Google Chrome](https://www.google.com/chrome/)
- [ChromeDriver](https://sites.google.com/chromium.org/driver/)

> 💡 O **ChromeDriver** deve estar compatível com a versão do seu Google Chrome.  
> Se você está se perguntando o que é o ChromeDriver, pense nele como um "ponteiro de controle" que permite ao Robot Framework controlar o navegador Chrome por meio da SeleniumLibrary.

#### Exemplo prático:
```robot
Open Browser    https://www.saucedemo.com/    Chrome  ->  Aqui a lógica é a seguinte:

O que acontece por trás:

-O Robot Framework lê o comando.

-A SeleniumLibrary entende que você quer abrir o navegador.

-A biblioteca aciona o ChromeDriver (instalado no sistema).

-O ChromeDriver abre uma nova janela do Google Chrome.

-O teste começa: clicar, digitar, verificar elementos etc.

Após o download, coloque o `chromedriver.exe` na mesma pasta do projeto ou em alguma pasta que esteja no seu **PATH do sistema**.

```
---

### 📌 2. Clonar o Repositório

```bash
git clone https://github.com/Cauzin1/saucedemo-robot-panda.git
cd saucedemo-robot-panda

```
---

### 📌 3. Instalar as dependências

pip install -r requirements.txt

Utilizando o pip ele vai instalar tudo o que precisa do projeto, que no caso seria o robotframework e o robotframework-seleniumlibrary.
 
### 📌 4. Executar os testes

No diretório principal do projeto, execute o comando:

robot tests/

O fluxo de execução do Robot Framework vai ser: Abrir o navegador -> executar os fluxos de teste -> Gerar os arquivos de relatório

### Relatórios Gerados

Após rodar os testes, você verá 3 arquivos:

output.xml: Saída bruta de execução

log.html: Relatório detalhado passo a passo, com capturas e validações

report.html: Relatório resumido por testes


Caso queira visualizar, abra os arquivos .html no navegador (pode fazer ou clicando ou arrastando com o mouse).

Obs: estou upando na versão final do projeto os arquivos que tive como resultado para que sejam utilizados de exemplos a fim de comparação com possíveis outros resultados de testes.


### Descrição dos Testes

--> login.robot

Realiza o login com:

-Usuário: standard_user
-Senha: secret_sauce

Valida se o usuário foi redirecionado para a tela de produtos com sucesso.

--> add_to_cart.robot

-Adiciona o produto "Sauce Labs Backpack" ao carrinho
-Acessa o carrinho
-Verifica se o item está presente

--> checkout.robot

-Acessa o carrinho
-Preenche os dados de checkout:
    -Nome
    -Sobrenome
    -CEP
    -Finaliza a compra

Valida se aparece a mensagem: "Thank you for your order!"
(é uma característica minha colocar sempre mensagens de "debug" em ingles, já que toda a estruturação do projeto como nome de arquivo, funções, classes e por ai vai eu tb utilizo em inglês, mas tenho consciência que existem pessoas que não sabem muito, sendo assim, vai de adaptar de projeto em projeto e equipe em equipe, mas é uma característica minha).

---
### Erros do Chrome

identifiquei na saída do console que foi retornado alguns erros como:

sandbox_win.cc:762] Sandbox cannot access executable
network_service_instance_impl.cc:597] Network service crashed

porém pesquisei sobre eles e cheguei a conclusão que são erros internos e não afetam os testes, esses seguem funcionando normalmente.

### Conclusão Final

-Todos os testes passaram com sucesso
-Fluxos foram automatizados de forma clara, modular e reutilizável
-Projeto pronto e rodando perfeitamente

### Contato

Caso tenha alguma dificuldade, precise de ajuda para executar o projeto ou entender alguma parte, por gentileza, entre em contato:

Email:thomascauzin@gmail.com
GitHub: https://github.com/Cauzin1
