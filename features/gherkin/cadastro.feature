# language:pt

Funcionalidade: Cadastro de clientes
  Para que eu possa fazer um novo cadastro
  Utilizando o menu inicial
  Posso acessar a funcionalidade de cadastro

  Cenário: Acessar tela de cadastro
    Dado que acesso o botão de opções
    Quando clico no botão de cadastro
    Então posso ver a tela de cadastro de novo cliente

  Cenário: Validar tela de cadastro básico
    Dado que acesssei a tela de cadastro de novo cliente
    Quando valido que estou no cadastro básico
    Então preencho os campos de cadastro
    E valido os botões
    E finalizo o cadastro

  Cenário: Validar tela de cadastro completo
    Dado que acesssei a tela de cadastro de novo cliente
    Quando valido que estou no cadastro completo
    Então preencho os campos de cadastro
    E valido os botões
    E finalizo o cadastro

  Cenário: Validar criação do cadastro básico
    Dado que estou na tela inicial
    Quando busco pelo cadastro básico
    Então deverá ser listado na tela

  Cenário: Validar criação do cadastro completo
    Dado que estou na tela inicial
    Quando busco pelo cadastro completo
    Então deverá ser listado na tela

  Cenário: Validar exclusão de cadastro básico
    Dado que estou na tela inicial
    Quando clico no cadastro básico
    E faço a exclusão
    Então o cadastrado não deverá mais estar listado na página inicial
   
  Cenário: Validar exclusão de cadastro básico
    Dado que estou na tela inicial
    Quando clico no cadastro básico
    E faço a exclusão
    Então o cadastrado não deverá mais estar listado na página inicial

