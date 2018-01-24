class CadastroUsuario < SitePrism::Page

	element :menuCadastro, '#menu_pim_viewPimModule'
	element :menuAddEmpregado, '#menu_pim_addEmployee'
	element :txtPrimeiroNome, '#firstName'
	element :txtSobreNome, '#lastName'
	element :btnSalvar, '#btnSave'


	def validar_nome(nome) 
		@nome= nome.to_s
	end

end