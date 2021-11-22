# language:pt

Funcionalidade: Cadastro de clientes
  Para que eu possa criar cadastros de clientes
  Sendo um usuário
  Posso então ter as opções de cadastro básico e cadastro completo
  
  @tela_inicial
  Cenário: Acessar tela de cadastro
    Dado que estou na tela inicial 
    Quando vou para tela de cadastro
    Então posso ver as opções de cadastro básico e completo

  @cadastro_basico
  Cenário: Validar tela de cadastro básico
    Dado que acesssei a tela de cadastro de novo cliente básico
    Quando preencho os campos de cadastro básico
    Então valido os botões do cadastro básico                

  @cadastro_completo
  Cenário: Validar tela de cadastro completo
     Dado que acesssei a tela de cadastro de novo cliente
    Quando preencho os campos de cadastro completo
    Então valido os botões do cadastro completo

  @search_basico
  Cenário: Validar criação do cadastro básico
    Dado que estou na tela inicial
    Quando busco pelo cadastro básico
    Então deverá ser listado na tela o cadastro básico

  @search_completo
  Cenário: Validar criação do cadastro completo
    Dado que estou na tela inicial
    Quando busco pelo cadastro completo
    Então deverá ser listado na tela o cadastro completo

  @exluir_basico
  Cenário: Validar exclusão de cadastro básico
    Dado que estou na tela inicial
    Quando seleciono um cadastro básico 
    Então faço a exclusão do cadastro básico

  @excluir_completo
  Cenário: Validar exclusão de cadastro completo
    Dado que estou na tela inicial
    Quando seleciono um cadastro completo 
    Então faço a exclusão do cadastro completo
    


