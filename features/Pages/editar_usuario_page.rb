class Editarusuario < SitePrism::Page

	element :menueditar, '#menu_pim_viewPimModule'
    element :menuveredicaousuario, '#menu_pim_viewEmployeeList'
    element :clicarusuario, :xpath, ' //*[@id="resultTable"]/tbody/tr[1]/td[3]'
    element :clicareditar, '#btnSave'
    element :procurarnome,'#personal_txtEmpFirstName'
    element :botaoSalvar, '#btnSave'
    


	def validar_edicao_usuario 
        assert_text('Successfully Saved')
	end
     
end