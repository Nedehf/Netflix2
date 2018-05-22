package aspects;

public aspect Aspecto {
	
	pointcut testecadastro():
		(call(* UsuarioForm.adicionar()));
	before():
		testecadastro(){
		System.out.println("Adicionando usuário");
	}
	after() returning: testecadastro(){
		System.out.println("Usuário adicionado com sucesso!");
	}
	
	

	pointcut validacao():
		(call(* UsuarioForm.validar()));
	before():
		testecadastro(){
		System.out.println("Tentando efetuar login");
	}
	after() returning: validacao(){
		System.out.println("Usuário logado com sucesso!");
	}


}
