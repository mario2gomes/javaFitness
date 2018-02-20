<%-- 
    Document   : aluno-avaliacao
    Created on : 04/01/2016, 00:54:59
    Author     : mário
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>
        
        <h1>Marcar avaliação:</h1>
        
        <form align="center" action="controle">
            <input type="date" name="data">
            <input type="hidden" value="InserirAvaliacao" name="logica">            
            <input type="submit" value="ok">
            <input type="reset" value="limpar">                        
	</form>
            
        <c:import url="rodape.jsp"></c:import>
        
    </body>
</html>
