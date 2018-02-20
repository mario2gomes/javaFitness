<%-- 
    Document   : desempenho
    Created on : 23/12/2015, 23:47:28
    Author     : mário
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>desempenho</title>
    </head>
    <body>

        <c:import url="cabecalho.jsp"></c:import>
        
<table width="1000" align="center">
            <tr> 
                <td> <center> <a href="aluno-avaliacao.jsp?matricula=${matricula}"> <img src="imagens/botao.png"> </a> </center>
                    <center> Marcar avaliação </center> </td>
                <td>  </td>       
                <td>  </td>
            <tr>
                <td></td> 
                <td> <center> <a href="aluno-desempenho.jsp"> <img src="imagens/botao.png"> </a></center> 
                    <center> Verificar desempenho </center></td>
                <td> </td>
            </tr>
                
        </table>
        <br><br>
        
        <c:import url="rodape.jsp"></c:import>
        
    </body>
</html>
