<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Faça o Bem - Página Inicial</title>
	<link rel="stylesheet" href="css/index.css" type="text/css"/>
	<script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="jquery/funcoes.js"></script>
</head>
<body id="index">
<div class="container">
    <div id="wrapper">
		<div class="title">
            <h1>FAÇA O BEM</h1>
	    	<h3>Seja gentil. Seja solidário</h3>
		</div>
		
		<aside>
        	<a href="cadastro.jsp" id="cadastrar"><button id="btn-cadastro">Cadastrar</button></a>
		</aside>
            

		<hr class="noscreen"/>
		
		<div class="content">
	    	<div class="column-left">
				<ul class="menu">
	            	<li><a href="#" class="active">Página Inicial</a></li>
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
					
						<figure>
						    <img src="imagens/Doe.jpg" id="doe" />
						</figure><br/>

	             		<h2>Bem-vindo ao Faça o Bem!</h2>
		                        
		                <!-- Acrescentei esse dois parágrafos pra por o texto --> 
						 <p>
		                    Exerça sua cidadania e promova a solidariedade colaborando com milhares de brasileiros
		                    que necessitam desse bem vital á vida: água.
		                </p>						
								
		      			 <p>
		                    Nossa organização também trabalha com arrecadação de roupas e agasalhos.
		                    Sinta-se à vontade em desapegar-se daquela peça que só toma espaço em seu armário.
		                </p>
								
						<br/>

			      		<figure>
					    	<img src="imagens/doacao-agua.jpg" id="agua" />
						</figure>		
																	
					</div>
	
				</div>
	
			 </div>
	
		 </div>
	 
	 </div>
	
	<footer>Copyright © 2016 FAÇA O BEM - Todos os direitos reservados</footer>
	
</div>
					  
</body>
</html>
