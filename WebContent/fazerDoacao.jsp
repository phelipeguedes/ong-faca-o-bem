<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Faça o Bem - Página Inicial</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="jquery/funcoes.js"></script>
    <link rel="stylesheet" href="css/doacoes.css" type="text/css"/>
</head>
<body>
	<div id="wrapper">
		<div class="title">
			<h1>FAÇA O BEM</h1>
			<h3>Faça uma doação</h3>
		</div>

		<hr class="noscreen" />
		
        <div class="content">
			<div class="column-left">
				<ul class="menu">
					<li><a href="index.jsp" class="active">Página Inicial</a></li>
					<li><a href="quemSomos.jsp">Quem Somos</a></li>
					<li><a href="#">Doações</a></li>
                    <li><a href="login.jsp">Login</a></li>
				</ul>
			</div>

            <div id="skip-menu"></div>
			<div class="column-right">
			    <div class="box">
				    <div class="box-top"></div>
					    <div class="box-in">		      
                            
                            <h2 id="doacoes">Doações</h2>                
                            <p id="doacao">Para fazer sua contribuição, preencha o formulário abaixo.</p>
                            <p id="atencao">Atenção! Os campos com asterísco são obrigatórios</p>

                            <form action="servletdoacao" method="post" id="doacao">
                                <p><label class="lblcad">*Nome:<input type="text" name="nome" id="nome" required class="txtcad" placeholder="informe seu nome" /></label></p>
                                
                                <p><label class="lblcad">&nbsp;&nbsp;Email:<input type="email" name="email" id="email" required class="txtcad" maxlength="40" placeholder="email@email.com" /></label></p>
                                
                                <p><label class="lblcad">*Telefone:<input type="tel" name="tel" id="tel" required class="txtcad" maxlength="13" placeholder=" somente números (99)9999.9999" /></label></p>
                                
                                <p><label class="lblcad">*Logradouro:<input type="text" name="logradouro" id="logradouro" required class="txtcad" placeholder="Rua, Nº, Bairro"/></label></p>
                                <p><label class="lblcad">*Estado<select name="estado" class="txtcad" required id="estado">

                                 <option>selecione o seu estado</option>
			                     <optgroup label="Região Nordeste">
			                     		<option value="Alagoas">Alagoas</option>
				                        <option value="Bahia">Bahia</option>
				                        <option value="Ceará">Ceará</option>
				                        <option value="Maranhão">Maranhão</option>
				                        <option value="Paraíba">Paraíba</option>
				                        <option value="Pernambuco">Pernambuco</option>
				                        <option value="Piauí">Piauí</option>
				                        <option value="Rio Grande do Norte">Rio Grande do Norte</option>
				                        <option value="Sergipe">Sergipe</option>
		                         </optgroup>
                             
		                         <optgroup label="Região Norte">
			                            <option value="Acre">Acre</option>
			                            <option value="Amazonas">Amazonas</option>
			                            <option value="Pará">Pará</option>
			                            <option value="Roraima">Roraima</option>
			                            <option value="Roraima">Rondonia</option>
			                            <option value="Tocantins">Tocantins</option>                    
		                         </optgroup>                             
                                
                          		 </select></label></p>

		                         <p><label class="lblcad">*Cidade<select class="txtcad" name="cidade" required id="cidade">
                         
        		                 <option>selecione a sua cidade</option>
                           		 <optgroup label="Região Nordeste">
	                           		 	<option value="Aracaju">Aracaju</option>
	                          		 	<option value="Fortaleza">Fortaleza</option>
	                            		<option value="João Pessoa">João Pessoa</option>
	                            		<option value="Maceió">Maceió</option>
	                            		<option value="Natal">Natal</option>
	                            		<option value="Recife">Recife</option>
	                            		<option value="Salvador">Salvador</option>
	                            		<option value="São Luis">São Luis</option>
	                            		<option value="Teresina">Teresina</option>
                          		</optgroup>
                          		
                          		<optgroup label="Região Norte">
	                          			<option value="Belém">Belém</option>
	                          			<option value="Boa Vista">Boa Vista</option>
	                          			<option value="Manaus">Manaus</option>
	                          			<option value="Palmas">Palmas</option>
	                          			<option value="Porto Velho">Porto Velho</option>
	                          			<option value="Rio Branco">Rio Branco</option>
                          		</optgroup>                      		
                                
                                </select></label></p>                              

                                <p><label class="lblcad">*CPF:<input type="text" name="cpf" id="cpf" required class="txtcad" maxlength="12" placeholder="somente números" /></label></p>
                                
                                <p><label class="lblcad">*RG:<input type="text" name="rg" id="rg" required class="txtcad" maxlength="12" placeholder="somente números" /></label></p><br/>
                                
                                <p><label class="lblcad">*Sua doação:<select name="tipo" required id="suadoacao">

                                <option value="">Selecione um tipo</option>
                                <optgroup label="Água">
                                    <option value="Água Potável">Água Potável</option>    
                                </optgroup>
                                
                                <optgroup label="Vestuário">
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
	
    <footer>Copyright © 2016 FAÇA O BEM - Todos os direitos reservados</footer>
    
</body>
</html>