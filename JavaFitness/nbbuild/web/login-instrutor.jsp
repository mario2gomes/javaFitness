<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Instrutor login</title>
	</head>
<body>
	<c:import url="/cabecalho.jsp"></c:import>
	
	<h1 align="center">
            <%
            java.util.GregorianCalendar data = new java.util.GregorianCalendar();
            int hora = data.get(data.HOUR_OF_DAY);

            if (hora >= 6 && hora < 12) out.println("Bom dia,");
            if (hora >= 12 && hora < 18) out.println("Boa tarde,");
            if (hora >= 18 || hora < 6) out.println("Boa noite,");	
        %>
            seja bem vindo à java fitnesss!</h1><br><br>
	
	<h1 align="center"><a><button>Instrutor</button></a><br></h1>	
			
	<form action="controle" method="post">
	<h3 align="center">Matricula: <input type="text" name="matricula"></h3>
	<h3 align="center">Senha: <input type="password" name="senha"></h3>
	<input type="hidden" value="instrutor" name="modo"/>
        <input type="hidden" value="ValidaLogin" name="logica"/>
	<h2 align="center"><input type="submit" value="ok">
	<input type="reset" value="limpar"></h2>
	</form>
	
	<c:import url="/rodape.jsp"></c:import>
</body>
</html>