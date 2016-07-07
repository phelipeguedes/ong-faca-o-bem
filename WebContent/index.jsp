<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Fa�a o Bem - P�gina Inicial</title>
	<link rel="stylesheet" href="css/index.css" type="text/css"/>
	<script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="jquery/funcoes.js"></script>
</head>
<body id="index">
<div class="container">
    <div id="wrapper">
		<div class="title">
            <h1>FA�A O BEM</h1>
	    	<h3>Seja gentil. Seja solid�rio</h3>
		</div>
		
		<aside>
        	<a href="cadastro.jsp" id="cadastrar"><button id="btn-cadastro">Cadastrar</button></a>
		</aside>
            

		<hr class="noscreen"/>
		
		<div class="content">
	    	<div class="column-left">
				<ul class="menu">
	            	<li><a href="#" class="active">P�gina Inicial</a></li>
		    		<li><a href="quemSomos.jsp">Quem Somos</a></li>
		    		<li><a href="fazerDoacao.jsp">Doa��es</a></li>
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

	             		<h2>Bem-vindo ao Fa�a o Bem!</h2>
		                        
		                <!-- Acrescentei esse dois par�grafos pra por o texto --> 
						 <p>
		                    Exer�a sua cidadania e promova a solidariedade colaborando com milhares de brasileiros
		                    que necessitam desse bem vital � vida: �gua.
		                </p>						
								
		      			 <p>
		                    Nossa organiza��o tamb�m trabalha com arrecada��o de roupas e agasalhos.
		                    Sinta-se � vontade em desapegar-se daquela pe�a que s� toma espa�o em seu arm�rio.
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
	
	<footer>Copyright � 2016 FA�A O BEM - Todos os direitos reservados</footer>
	
</div>
					  
</body>
</html>
