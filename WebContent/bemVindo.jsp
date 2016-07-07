<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/bemVindo.css">
	<title>P�gina de Boas Vindas</title>
</head>
<body>
	
	<%-- Ap�s o login, usu�rio vai para a p�gina de boas-vindas --%>
	
	<h3>Ol�, que bom que voc� faz parte do time da FA�A O BEM!</h3>
	<hr>
	<p><strong>Voc� possui privil�gios de administrador.</strong></p>
	
	<%-- �rea para pesquisa --%>
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
				<li><a href="doacoesCadastradas.jsp">Doa��es</a></li>
				<li><a href="colaboradores.jsp">Colaboradores</a></li>
				<li><a href="index.jsp">Sair</a></li>
			</ul>
		</nav>
	</div>	
	
</body>
</html>