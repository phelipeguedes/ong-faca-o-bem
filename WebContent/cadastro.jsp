<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
    <script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="jquery/funcoes.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cadastro.css">	
    <title>Página de Cadastro</title>    
</head>
<body>
<div id="wrapper">
	<div class="title">
	    <h1>FAÇA O BEM</h1>
	    <h3>Cadastro de Colaborador</h3>
	</div>

	<hr class="noscreen"/>
		
        <div class="content">
	    <div class="column-left">
			<ul class="menu">
		 	    <li><a href="index.jsp" class="active">Página Inicial</a></li>
			    <li><a href="quemSomos.jsp">Quem Somos</a></li>
			    <li><a href="fazerDoacao.jsp">Doações</a></li>
	            <li><a href="login.jsp">Login</a></li>
			</ul>
	    </div>

        <div id="skip-menu"></div>
	    <div class="column-right">
	        <div class="box">
		    <div class="box-top"></div>
		        <div class="box-in">		      
                            
                	<h2 id="doacoes">Cadastro</h2>                
                    <p id="doacao">Para fazer parte da <b>FAÇA O BEM</b>, preencha os dados abaixo</p>
                    <p id="atencao">Atenção! Os campos com asterísco são obrigatórios</p>

                    <form id="doacao" action="servletcolaborador" method="post">
                    	<p><label class="lblcad">*Nome:<input type="text" name="nome" id="nome" required class="txtcad" placeholder="informe seu nome" /></label></p>
                                
                        <p><label class="lblcad">&nbsp;&nbsp;*Email:<input type="email" name="email" id="email" required class="txtcad" maxlength="40" placeholder="email@email.com" /></label></p>
                                
                        <p><label class="lblcad">&nbsp;&nbsp;*Senha:<input type="password" name="senha" id="senha" required class="txtcad" maxlength="40" placeholder="defina uma senha" /></label></p>
                                
                        <p><label class="lblcad">*Telefone:<input type="text" name="telefone" id="tel" required class="txtcad" maxlength="13" placeholder="somente números (99)9999.9999" /></label></p>

                        <p><label class="lblcad">Celular:<input type="text" name="celular" id="cel" class="txtcad" maxlength="14" placeholder="somente números (99)9999.9999" /></label></p>
                                
                        <p><label class="lblcad">*Logradouro:<input type="text" name="logradouro" id="logradouro" required class="txtcad" placeholder="Rua, Nº, Bairro"/></label></p>
                        
                        <p><label class="lblcad">*Estado<select class="txtcad" name="estado" required id="estado">
                        
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
                            	<option value="São luis">São luis</option>
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
                                
                          <label id="lblexperiencia">*Experiência c/ trabalho voluntário?&nbsp;</label>

                          <label>Sim &nbsp;<input type="radio" name="experiencia" value="sim" required /></label>
                          <label>Não &nbsp;<input type="radio" name="experiencia" value="nao" required /></label>

                          <br/><br/>                               

                          <p>Caso sim, conte-nos!:<br/>
                          		<textarea cols="50" rows="10" name="conte" placeholder="Trabalhei..."></textarea>
                          </p><br/>
                            
                           <input type="submit" value="Cadastrar" id="botao"/>                                

                        </form>	
                        			     
			     	</div>
			     				
		     	</div>	
     		 
        	</div>
     		    	
 	  	</div>
  		
 	</div>
 	
    <footer>Copyright © 2016 FAÇA O BEM - Todos os direitos reservados</footer> 
 
</body>
</html>
