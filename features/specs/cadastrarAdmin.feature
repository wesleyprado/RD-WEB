#language: pt
#encoding: UTF-8
@regression
Funcionalidade: Cadastrar um ADMIN

  @happy-flow
  Cenario: Cadastrar um ADMIN com sucesso
    Dado que esteja no sistema
    E realize o login com sucesso
    Quando clicar na para cadastrar um novo administrador
    E preencher todos os campos corretamente
    Então devo ser capaz de excluir o novo usuario