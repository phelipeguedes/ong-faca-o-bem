<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.facaobem.modelo.*"%>
<%@ page import="br.com.facaobem.dao.*"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/contatos.css">
<meta charset="utf-8"/>
<title>Contatos</title>
</head>
<body>
	
	<div id="contatos">
		<h2>Contatos</h2>
	</div>
	
	<%-- Instanciando a classe ContatoDao, através do construtor s/ argumentos.
	 O valor do atributo 'id', no caso dao, é usado como variável dessa instância --%>

	<jsp:useBean id="dao" class="br.com.facaobem.dao.ContatoDao" />

	<table border="1" style="width: 100%">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Pessoa</th>
			<th>Telefone</th>
			<th>Email</th>
		</tr>

		<%-- 'items' indica a coleção (lista) que estou utilizando. 'var' é o objeto atribuído p/ cada iteração --%>

		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.codigo}</td>
				<td>${contato.nome}</td>
				<td>${contato.tipoDaPessoa}</td>
				<td>${contato.telefone}</td>
				<td>${contato.email}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>