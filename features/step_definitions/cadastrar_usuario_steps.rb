Dado(/^que esteja na tela home$/) do
  @loginPage = LoginUsuario.new
  @cadastroPage = CadastroUsuario.new

  @loginPage.load
  @loginPage.login 'Admin', 'admin'
end

Quando(/^adicionar um novo "([^"]*)" , "([^"]*)"$/) do |nome, sobrenome|
  @cadastroPage.menuCadastro.click
  @cadastroPage.menuAddEmpregado.click
  @cadastroPage.txtPrimeiroNome.set nome
  @cadastroPage.txtSobreNome.set sobrenome
  @cadastroPage.btnSalvar.click
  
  @primeiro = nome
  @teste = find('#personal_txtEmpFirstName')
  @sobre = sobrenome
  @teste2 = find('#personal_txtEmpLastName')
end

Entao("o nome e sobrenome deve estar no campo") do
  #expect(find(@primeiro).include?)
  expect(@teste.text).to eq(@primeiro)
  expect(@teste2.text).to eq(@sobre)
  #expect(@cadastroPage).to have_field("personal_txtEmpFirstName") { |field|
  #field.value.present?}
end