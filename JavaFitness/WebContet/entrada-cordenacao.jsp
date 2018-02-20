<%-- 
    Document   : entrada-cordenacao
    Created on : 27/12/2015, 14:14:43
    Author     : mário
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home cordenação</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>
        
        <h1 align="center"> <font color="green"> Seja bem vindo, ${funcionario.nome}! </font> </h1><br><br> 
        
        <table align="center">
            <tr> 
                <td> <a href="controle?logica=Listar&modo=aluno"> <img width="200" height="200" src="imagens/dia-a-dia.png"></a> </td>
                <td> <a href="controle?logica=Listar&modo=funcionario"> <img width="200" height="200" src="imagens/dia-a-dia.png"></a> </td>                                
            <tr>
                <td> <center> GERENCIAR ALUNOS</center> </td>
                <td> <center> CADASTRAR FUNCIONÁRIO </center> </td>                
            </tr>
        </table>
        <br><br>
	
	<c:import url="rodape.jsp"></c:import>
    </body>
</html>
