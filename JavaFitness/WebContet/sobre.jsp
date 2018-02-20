<%-- 
    Document   : sobre
    Created on : 04/01/2016, 00:17:12
    Author     : mário
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:import url="cabecalho.jsp"></c:import>
        
        <h1 align="center"> <img width="200" height="200" src="imagens/info.png"> </h1>
        
        <p> <font size="30"> A academia Javafitness é fictícia e seu site foi criado unicamente no intuito 
            de permitir a criação do projeto em java web, para conclusão da disciplina de
            programação avançada para internet.</font></p>                
        
        <c:import url="/rodape.jsp"></c:import>
        
    </body>
</html>
