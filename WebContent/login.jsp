<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Fa�a o Bem - P�gina Inicial</title>
	<link rel="stylesheet" href="css/login.css" type="text/css" />
	<script type="text/javascript" src="jquery/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="jquery/funcoes.js"></script>
</head>
<body>
	<div class="container">
		<div id="wrapper">
			<div class="title">
				<h1>FA�A O BEM</h1>
				<h3>Seja gentil. Seja solid�rio</h3>
			</div>

			<aside>
				<a href="cadastro.jsp" id="cadastrar"><button id="btn-cadastro">Cadastrar</button></a>
			</aside>

			<hr class="noscreen" />

			<div class="content">
				<div class="column-left">
					<ul class="menu">
						<li><a href="index.jsp" class="active">P�gina Inicial</a></li>
						<li><a href="quemSomos.jsp">Quem Somos</a></li>
						<li><a href="fazerDoacao.jsp">Doa��es</a></li>
						<li><a href="#">Login</a></li>
					</ul>
				</div>

				<div id="skip-menu"></div>
				<div class="column-right">
						<div class="box">
						<div class="box-top"></div>
						<div class="box-in">
							<!-- <form action="servletlogin" method="post"> -->
							<!-- Login com o jsp:useBean. Enviando dados p/ o 'forward.jsp' -->
							<form action="forward.jsp" method="post">
								<label>Login<input type="text" name="email" id="login" class="txtlogin" placeholder="Login/endere�o de email" required /></label><br />
								<label>Senha&nbsp;<input type="password" name="senha" class="txtlogin" placeholder="Senha" required /></label> 
								<label id="esqueci"><a href="#" id="esquecisenha">Esqueci a senha</a></label> <a id="login"><button id="btn-login" type="submit">Login</button></a>
							</form>
						</div>

					    </div>

				 </div>
			  
			  </div>

	    </div>

  </div>
	
	<footer>Copyright � 2016 FA�A O BEM - Todos os direitos	reservados</footer>
	
</body>
</html>