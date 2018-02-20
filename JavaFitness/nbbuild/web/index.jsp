<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Java fitness login</title>
	</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	
        <h1 align="center"> <font color="green"> 
        <%
            java.util.GregorianCalendar data = new java.util.GregorianCalendar();
            int hora = data.get(data.HOUR_OF_DAY);

            if (hora >= 6 && hora < 12) out.println("Bom dia,");
            if (hora >= 12 && hora < 18) out.println("Boa tarde,");
            if (hora >= 18 || hora < 6) out.println("Boa noite,");	
        %>
         seja bem vindo à java fitnesss! </font> </h1><br><br>
	
	<h2 align="center"><a href="login-aluno.jsp"> <button> Aluno</button></a><br></h2>
	<h2 align="center"><a href="login-instrutor.jsp"><button>Instrutor</button></a><br></h2>
	<h2 align="center"><a href="login-cordenacao.jsp"><button>Coordenação</button></a><br></h2>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>