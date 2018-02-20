<%-- 
    Document   : instrutor-avaliacoes
    Created on : 04/01/2016, 02:12:17
    Author     : mário
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliações</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>
        
        <table border="1" align="center">
	<tr> 		
		<td> <b>AV</b></td> 
		<td> <b> DATA </b> </td> 
		
	</tr>

	<c:forEach var="avaliacao" items="${avaliacaos}" varStatus="id">
	<tr bgcolor="#${id.count % 2 == 0 ? '888888' : 'ffffff'}" >		
		<td> ${avaliacao.id} </td>		
		<td> <fmt:formatDate pattern="dd/MM/yyyy" value="${avaliacao.data.time}"/>  </td>
                <td>
			<a href="controle?logica=CancelarAvaliacao&id=${avaliacao.id}&modo=aluno"><button>Cancelar</button></a>
		</td>		
	</tr>
	</c:forEach>	
        </table>
        
        <c:import url="/rodape.jsp"></c:import>
        
    </body>
</html>
