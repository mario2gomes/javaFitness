<%-- 
    Document   : planos
    Created on : 04/01/2016, 02:57:04
    Author     : mário
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plano de exercício</title>
    </head>
    <body>                
        
<c:import url="cabecalho.jsp"></c:import>                

        <h1 align="center"> <font color="green"> ${msg} </font> </h1><br><br> 

        <table border="1" align="center">
	<tr> 				
		<td> <b> GRUPO MUSCULAR </b> </td> 
                <td> <b>EXERCÍCIO</b></td>
                <td> <b>TEMPO</b></td>
                <td> <b>SÉRIES</b></td>
		
	</tr>
	<c:forEach var="plano" items="${planos}" varStatus="id">
	<tr bgcolor="#${id.count % 2 == 0 ? '888888' : 'ffffff'}" >		                
                <td> ${plano.grupo} </td>		
                <td> ${plano.exercicio} </td>
                <td> ${plano.tempo} </td>
                <td> ${plano.series} </td>                		
	</tr>
	</c:forEach>	
        </table>
        
        <c:import url="/rodape.jsp"></c:import>    </body>
</html>
