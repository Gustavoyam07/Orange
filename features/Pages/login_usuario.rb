class LoginUsuario < SitePrism::Page

	set_url "http://opensource.demo.orangehrmlive.com/"
	element :username, '#txtUsername'
	element :password, '#txtPassword'
	element :btlogar, '#btnLogin'

	def login(usuario, senha)
		username.set(usuario)
		password.set(senha)
		btlogar.click

	end


end