<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.facaobem.modelo.*"%>
<%@ page import="br.com.facaobem.dao.*"%>
<%@ page import="java.util.List"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Colaboradores</title>
<link rel="stylesheet" type="text/css" href="css/colaboradores.css" />
</head>
<body>
	
	<div id="colaboradores">
		<h2>Colaboradores</h2>
	</div>
	
	<%-- Instanciando a classe ColaboradorDao, através do construtor s/ argumentos.
	 O valor do atributo 'id', no caso dao, é usado como variável dessa instância --%>

	<jsp:useBean id="dao" class="br.com.facaobem.dao.ColaboradorDao" />

	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Telefone</th>
			<th>Celular</th>
			<th>Logradouro</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Experiencia</th>
			<th>Sobre Experiencia</th>
		</tr>

		<%-- 'items' indica a coleção (lista) que estou utilizando. 'var' é o objeto atribuído p/ cada iteração --%>

		<c:forEach var="colaborador" items="${dao.lista}">
			<tr>
				<td>${colaborador.id }</td>
				<td>${colaborador.nome}</td>
				<td>${colaborador.email}</td>
				<td>${colaborador.telefone}</td>
				<td>${colaborador.celular}</td>
				<td>${colaborador.logradouro}</td>
				<td>${colaborador.cidade}</td>
				<td>${colaborador.estado}</td>
				<td>${colaborador.cpf}</td>
				<td>${colaborador.rg}</td>
				<td>${colaborador.experiencia }</td>
				<td>${colaborador.sobreExperiencia}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>