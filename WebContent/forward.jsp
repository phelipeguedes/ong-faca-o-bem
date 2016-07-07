<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Teste</title>
</head>
<body>
	
	<%-- JSP responsável pelo login. Recebe requisições do 'login.jsp' e repassa, pela session, p/ servletlogin  --%>

	<%-- Instancia a classe Colaborador. O valor 'colaborador', no id, serve p/ recuperar seus atributos --%>
	<jsp:useBean id="colaborador" class="br.com.facaobem.modelo.Colaborador" scope="session"/>
	
	<%-- Propriedades do bean (Colaborador) que serão utilizadas. '*' Representa todas as propriedades --%>
	<jsp:setProperty property="*" name="colaborador"/>
	
	<%-- redirecionando p/ a servletlogin --%>
	<jsp:forward page="servletlogin"></jsp:forward>
	
</body>
</html>