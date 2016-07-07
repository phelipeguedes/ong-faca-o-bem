
/* Funções para os formulários presentes nas págias de cadastro e de doações */

$(document).ready(function(){	

	/* Campo do 'nome': converte caracteres maiúsculos em minúsculos */	
	$("#email").keyup(function(){
		$("#email").val($(this).val().toLowerCase());
	});

	/* Campo do 'nome': converte caracteres minúsculos em maiúsculos */	
	$("#nome").keyup(function(){
		$("#nome").val($(this).val().toUpperCase());
	});

	/* Campo 'logradouro': converte caracteres minúsculos em maiúsculos */
	$("#logradouro").keyup(function(){
		$("#logradouro").val($(this).val().toUpperCase());
	});

	/* Campo do telefone */
	$("#tel").keypress(function(){			
		if ($("#tel").val().length == 0){
			$("#tel").val($("#tel").val() + "(" );
		} else if ($("#tel").val().length == 3){
			$("#tel").val($("#tel").val() + ")" );
		} else if ($("#tel").val().length == 8){
			$("#tel").val($("#tel").val() + ".");
		}	
	});

	 /* Campo do celular */
	$("#cel").keypress(function(){
		if($("#cel").val().length == 0){
			$("#cel").val($("#cel"). val() + "(");
		} else if ($("#cel").val().length == 3){
			$("#cel").val($("#cel").val() + ")");
		} else if ($("#cel").val().length == 9){
			$("#cel").val($("#cel").val() + ".");
		}
	});

	/* Campo do cpf */	
	$("#cpf").keypress(function(){
		if($("#cpf").val().length == 9){
			$("#cpf").val($("#cpf").val() + "-");
		}
	});

	/* Campo do rg */	
	$("#rg").keypress(function(){
		if($("#rg").val().length == 10){
			$("#rg").val($("#rg").val() + "-");
		}
	});



});
