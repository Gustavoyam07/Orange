#language: pt
#utf-8

@Cadastro
Funcionalidade: Cadastrar Usuario
	Eu como Administrador do portal
	Quero cadastrar um novo Usuario
	Para o mesmo usar as funcionalidades do portal

Contexto: Que eu esteja na tela da Home
	Dado que esteja na tela home

Esquema do Cenario: Cadastrar Usuario	
	Quando adicionar um novo "<nome>" , "<sobrenome>"
	Entao o nome e sobrenome deve estar no campo


	 Exemplos: 


	     | nome | sobrenome |
	     | Fabio | Souza |
	     | Lucas | Silva | 

		
