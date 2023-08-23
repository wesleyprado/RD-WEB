Dado('que esteja no sistema') do
  $driver.navigate.to CONFIG['url']
  sleep(3)
end

Dado('realize o login com sucesso') do
  @login.login
  sleep(3)
end

Quando('clicar na para cadastrar um novo administrador') do
  @home.addAdm
  @register.goToAddPage
end

Quando('preencher todos os campos corretamente') do
  @register.addNewUser
  sleep(3)
end

Então('devo ser capaz de excluir o novo usuario') do
  @register.searchUser
  @register.deleteUser
end