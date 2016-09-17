<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/bemVindo.css">
	<title>Página de Boas Vindas</title>
</head>
<body>
	
	<%-- Após o login, usuário vai para a página de boas-vindas --%>
	
	<h3>Olá, que bom que você faz parte do time da FAÇA O BEM!</h3>
	<hr>
	<p><strong>Você possui privilégios de administrador.</strong></p>
	
	<%-- Área para pesquisa --%>
	<div>
		<input type="text" name="onde" id="onde" placeholder="Para onde vamos agora?" />
	</div>
	
	<br/>
	
	<%-- Menu lateral --%>
	<div id="menu">
		<nav id="menu">
			<ul class="menu">
				<li><a href="contatos.jsp" class="active">Contatos</a></li>
				<li><a href="patrocinadores.jsp">Patrocinadores</a></li>
				<li><a href="doacoesCadastradas.jsp">Doações</a></li>
				<li><a href="colaboradores.jsp">Colaboradores</a></li>
				<li><a href="index.jsp">Sair</a></li>
			</ul>
		</nav>
	</div>	
	
</body>
</html>
