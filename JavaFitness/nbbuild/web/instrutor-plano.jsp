<%-- 
    Document   : instrutor-evolucao
    Created on : 30/12/2015, 18:20:30
    Author     : mário
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plano de exercícios</title>
    </head>
    <body>

	<c:import url="cabecalho.jsp"></c:import>		
        
        <h1 align="center"> Elaborar plano de exercícios: </h1>
	<form action="controle">
		<h3 align="center">Nome: <input type="text" name="nome"></h3>
		<h3 align="center">Senha: <input type="password" name="senha"></h3>
                <h3 align="center">Nascimento: <input type="date" name="nascimento"></h3>
                <h3 align="center">Sexo: <input type="radio" name="sexo" value="m"> masculino
                                         <input type="radio" name="sexo" value="f"> feminino </h3>
                <h3 align="center">Interesse: <select name="interesse">
                                                <option value="hipertrofia">Hipertrofia</option>
                                                <option value="emagrecer">Emagrecer</option>
                                                <option value="fisioterapia">Fisioterapia</option>
                                                <option value="aerobico">Aeróbico</option>
                                                </select></h3>                
                <h3 align="center">Altura: <input type="text" name="altura"></h3>
                <h3 align="center">Peso: <input type="text" name="peso"></h3>
                <input type="hidden" value="aluno" name="modo"/>
		<input type="hidden" value="Cadastrar" name="logica"/>
		<h2 align="center"><input type="submit" value="ok">
		<input type="reset" value="limpar"></h2>
	</form>               
        
        <table border="1">
	<tr> 		
		<td> <b>MAT</b></td> 
		<td> <b> NOME </b> </td> 
		<td> <b> DATA DE NASC. </b> </td> 
                <td> <b> DATA DE MAT. </b> </td> 
                <td> <b> SEXO </b> </td> 
                <td> <b> INTERESSE </b> </td> 
                <td> <b> PESO </b> </td> 
                <td> <b> ALTURA </b> </td> 
	</tr>	
	
        </table>
        
        <h2 align="center"><a href="entrada-cordenacao.jsp"> <button> Voltar</button></a><br></h2>
        
        <c:import url="rodape.jsp"></c:import>

    </body>
</html>
