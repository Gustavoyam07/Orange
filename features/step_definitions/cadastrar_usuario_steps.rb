Dado(/^que esteja na tela home$/) do
  @loginpage = LoginUsuario.new
  @cadastropage = CadastroUsuario.new

  @loginpage.load
  @loginpage.login 'Admin', 'admin'
end

Quando(/^adicionar um novo "([^"]*)" , "([^"]*)"$/) do |nome, sobrenome|
  @cadastropage.menuCadastro.click
  @cadastropage.menuAddEmpregado.click
  @cadastropage.txtPrimeiroNome.set nome
  @cadastropage.txtSobreNome.set sobrenome
  @cadastropage.btnSalvar.click
  
  @primeiro = nome
  @teste = find('#personal_txtEmpFirstName')
  @sobre = sobrenome
  @teste2 = find('#personal_txtEmpLastName').text
end

Entao("o nome e sobrenome deve estar no campo") do
  assert_text @primeiro
  assert_text @sobre
  #expect(find(@primeiro).include?)
  #expect(@teste).to eq(@primeiro)
  #expect(@teste2).to eq(@sobre)
  #expect(@cadastroPage).to have_field("personal_txtEmpFirstName") { |field|
  #field.value.present?}
end   