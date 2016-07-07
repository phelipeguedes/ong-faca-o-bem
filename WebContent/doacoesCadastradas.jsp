<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.facaobem.modelo.*"%>
<%@ page import="br.com.facaobem.dao.*"%>
<%@ page import="java.util.List"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Doa��es Cadastradas</title>
<link rel="stylesheet" type="text/css" href="css/doacoesCadastradas.css" >
</head>
<body>

	<div id="doacoes">
		<h2>Doa��es</h2>
	</div>

	<%-- Instanciando a classe DoacaoDao, atrav�s do construtor s/ argumentos.
	 O valor do atributo 'id', no caso dao, � usado como vari�vel dessa inst�ncia --%>

	<jsp:useBean id="dao" class="br.com.facaobem.dao.DoacaoDao" />

	<table border="1" style="width: 100%">
		<tr>
			<th>C�digo</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Telefone</th>
			<th>Logradouro</th>
			<th>Cidade</th>
			<th>Estado</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Tipo</th>
			<th>Quantidade</th>
			<th>Mensagem</th>
		</tr>

		<%-- 'items' indica a cole��o (lista) que estou utilizando. 'var' � o objeto atribu�do p/ cada itera��o --%>

		<c:forEach var="doacao" items="${dao.lista}">
			<tr>
				<td>${doacao.cod}</td>
				<td>${doacao.nomeDoador}</td>
				<td>${doacao.emailDoador}</td>
				<td>${doacao.telefoneDoador}</td>
				<td>${doacao.logradouroDoador }</td>
				<td>${doacao.cidadeDoador}</td>
				<td>${doacao.estadoDoador}</td>
				<td>${doacao.cpfDoador}</td>
				<td>${doacao.rgDoador}</td>
				<td>${doacao.tipo}</td>
				<td>${doacao.quantidade}</td>
				<td>${doacao.mensagemDoador}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>