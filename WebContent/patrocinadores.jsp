<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.facaobem.modelo.*" %>
<%@ page import="br.com.facaobem.dao.*" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Patrocinadores</title>
<link rel="stylesheet" type="text/css" href="css/patrocinadores.css">
</head>
<body>
	
	<div id="patrocinadores">
		<h2>Patrocinadores</h2>
	</div>
	
	<%-- Instanciando a classe PatrocinadorDao, através do construtor s/ argumentos.
	 O valor do atributo 'id', no caso dao, é usado como variável dessa instância --%>
	
	<jsp:useBean id="dao" class="br.com.facaobem.dao.PatrocinadorDao"/>
	
	<table border="1" style="width:100%">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>CNPJ</th>
			<th>Telefone</th>
			<th>Email</th>
			<th>Valor</th>
		</tr>
		
		<%-- 'items' indica a coleção (lista) que estou utilizando. 'var' é o objeto atribuído p/ cada iteração --%>
		
		<c:forEach var="patrocinador" items="${dao.lista}">
			<tr>
				<td>${patrocinador.codigo}</td>
				<td>${patrocinador.nome}</td>
				<td>${patrocinador.cnpj}</td>
				<td>${patrocinador.telefone}</td>
				<td>${patrocinador.email}</td>
				<td>${patrocinador.valor}</td>
			</tr>	
		</c:forEach>		
	</table>
	
</body>
</html>