Dado(/^que esteja na tela de Edição$/) do
  @loginPage = LoginUsuario.new
  @editarpage = Editarusuario.new

  @loginPage.load
  @loginPage.login 'Admin', 'admin'
end

Quando(/^seleciono o Usuario$/) do
 @editarpage.menueditar.click
 @editarpage.menuveredicaousuario.click
 @editarpage.clicarusuario.click
end

Quando(/^Edito o Usuario$/) do
 @editarpage.clicareditar.click
 @editarpage.procurarnome.click 
 @editarpage.procurarnome.set 'Gustavo'
 @editarpage.botaoSalvar.click
end

Entao(/^o mesmo deve estar alterado$/) do
@editarpage.validar_edicao_usuario
end