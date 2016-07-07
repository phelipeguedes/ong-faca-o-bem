<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fa�a o Bem - P�gina Inicial</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="jquery/funcoes.js"></script>
    <link rel="stylesheet" href="css/doacoes.css" type="text/css"/>
</head>
<body>
	<div id="wrapper">
		<div class="title">
			<h1>FA�A O BEM</h1>
			<h3>Fa�a uma doa��o</h3>
		</div>

		<hr class="noscreen" />
		
        <div class="content">
			<div class="column-left">
				<ul class="menu">
					<li><a href="index.jsp" class="active">P�gina Inicial</a></li>
					<li><a href="quemSomos.jsp">Quem Somos</a></li>
					<li><a href="#">Doa��es</a></li>
                    <li><a href="login.jsp">Login</a></li>
				</ul>
			</div>

            <div id="skip-menu"></div>
			<div class="column-right">
			    <div class="box">
				    <div class="box-top"></div>
					    <div class="box-in">		      
                            
                            <h2 id="doacoes">Doa��es</h2>                
                            <p id="doacao">Para fazer sua contribui��o, preencha o formul�rio abaixo.</p>
                            <p id="atencao">Aten��o! Os campos com aster�sco s�o obrigat�rios</p>

                            <form action="servletdoacao" method="post" id="doacao">
                                <p><label class="lblcad">*Nome:<input type="text" name="nome" id="nome" required class="txtcad" placeholder="informe seu nome" /></label></p>
                                
                                <p><label class="lblcad">&nbsp;&nbsp;Email:<input type="email" name="email" id="email" required class="txtcad" maxlength="40" placeholder="email@email.com" /></label></p>
                                
                                <p><label class="lblcad">*Telefone:<input type="tel" name="tel" id="tel" required class="txtcad" maxlength="13" placeholder=" somente n�meros (99)9999.9999" /></label></p>
                                
                                <p><label class="lblcad">*Logradouro:<input type="text" name="logradouro" id="logradouro" required class="txtcad" placeholder="Rua, N�, Bairro"/></label></p>
                                <p><label class="lblcad">*Estado<select name="estado" class="txtcad" required id="estado">

                                 <option>selecione o seu estado</option>
			                     <optgroup label="Regi�o Nordeste">
			                     		<option value="Alagoas">Alagoas</option>
				                        <option value="Bahia">Bahia</option>
				                        <option value="Cear�">Cear�</option>
				                        <option value="Maranh�o">Maranh�o</option>
				                        <option value="Para�ba">Para�ba</option>
				                        <option value="Pernambuco">Pernambuco</option>
				                        <option value="Piau�">Piau�</option>
				                        <option value="Rio Grande do Norte">Rio Grande do Norte</option>
				                        <option value="Sergipe">Sergipe</option>
		                         </optgroup>
                             
		                         <optgroup label="Regi�o Norte">
			                            <option value="Acre">Acre</option>
			                            <option value="Amazonas">Amazonas</option>
			                            <option value="Par�">Par�</option>
			                            <option value="Roraima">Roraima</option>
			                            <option value="Roraima">Rondonia</option>
			                            <option value="Tocantins">Tocantins</option>                    
		                         </optgroup>                             
                                
                          		 </select></label></p>

		                         <p><label class="lblcad">*Cidade<select class="txtcad" name="cidade" required id="cidade">
                         
        		                 <option>selecione a sua cidade</option>
                           		 <optgroup label="Regi�o Nordeste">
	                           		 	<option value="Aracaju">Aracaju</option>
	                          		 	<option value="Fortaleza">Fortaleza</option>
	                            		<option value="Jo�o Pessoa">Jo�o Pessoa</option>
	                            		<option value="Macei�">Macei�</option>
	                            		<option value="Natal">Natal</option>
	                            		<option value="Recife">Recife</option>
	                            		<option value="Salvador">Salvador</option>
	                            		<option value="S�o Luis">S�o Luis</option>
	                            		<option value="Teresina">Teresina</option>
                          		</optgroup>
                          		
                          		<optgroup label="Regi�o Norte">
	                          			<option value="Bel�m">Bel�m</option>
	                          			<option value="Boa Vista">Boa Vista</option>
	                          			<option value="Manaus">Manaus</option>
	                          			<option value="Palmas">Palmas</option>
	                          			<option value="Porto Velho">Porto Velho</option>
	                          			<option value="Rio Branco">Rio Branco</option>
                          		</optgroup>                      		
                                
                                </select></label></p>                              

                                <p><label class="lblcad">*CPF:<input type="text" name="cpf" id="cpf" required class="txtcad" maxlength="12" placeholder="somente n�meros" /></label></p>
                                
                                <p><label class="lblcad">*RG:<input type="text" name="rg" id="rg" required class="txtcad" maxlength="12" placeholder="somente n�meros" /></label></p><br/>
                                
                                <p><label class="lblcad">*Sua doa��o:<select name="tipo" required id="suadoacao">

                                <option value="">Selecione um tipo</option>
                                <optgroup label="�gua">
                                    <option value="�gua Pot�vel">�gua Pot�vel</option>    
                                </optgroup>
                                
                                <optgroup label="Vestu�rio">
                                	<option value="Agasalhos">Agasalhos</option>
                                    <option value="Roupas">Roupas</option>
                                </optgroup>
                                
                                <optgroup label="Outro">
                                    <option value="Outro">Outro</option>
                                </optgroup>                    

                                </select></label></p>
                                
                                <p><label class="lblcad">*Quantidade:<input type="number" name="quantidade" id="quantidade" required /></label></p>           

                                <p>Deixe Uma Mensagem (opcional):<br/>
                                    <textarea name="mensagem" cols="50" rows="10" placeholder="Estou doando..."></textarea>
                                </p>
                                
                                <br/>
                                
                                <p><input type="submit" value="Enviar" id="botao"/></p>                            
                            </form>					
			
				      </div>
			    
			     </div>
		   
		     </div>
		     
	    </div>
	    
  </div>
	
    <footer>Copyright � 2016 FA�A O BEM - Todos os direitos reservados</footer>
    
</body>
</html>