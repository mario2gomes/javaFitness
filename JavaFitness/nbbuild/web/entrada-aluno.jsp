<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home aluno</title>
</head>
<body>
	
	<c:import url="cabecalho.jsp"></c:import>
	
            <h1 align="center"> <font color="green"> Seja bem vindo, ${aluno.nome}! </font> </h1><br><br> 
	
        <table align="center">
            <tr>                  

                <td> <a href="controle?logica=ListarPlano&matricula=${aluno.matricula}"> <img width="200" height="200" src="imagens/dia-a-dia.png"></a> </td>       
                <td> <a href="aluno-avaliacao.jsp"> <img width="200" height="200" src="imagens/desempenho.png"></a> </td>
            <tr>
                <td> <center> PLANO DE EXERCÍCIOS </center> </td>
                <td> <center> MARCAR AVALIAÇÃO </center> </td>
            </tr>
        </table>
        <br><br>                
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>