package aspects;

public aspect Aspecto {
	
	pointcut testecadastro():
		(call(* UsuarioForm.adicionar()));
	before():
		testecadastro(){
		System.out.println("Adicionando usu�rio");
	}
	after() returning: testecadastro(){
		System.out.println("Usu�rio adicionado com sucesso!");
	}
	
	

	pointcut validacao():
		(call(* UsuarioForm.validar()));
	before():
		testecadastro(){
		System.out.println("Tentando efetuar login");
	}
	after() returning: validacao(){
		System.out.println("Usu�rio logado com sucesso!");
	}


}
