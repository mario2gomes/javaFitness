<%-- 
    Document   : entrada-instrutor
    Created on : 27/12/2015, 14:14:32
    Author     : mário
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alunos</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>                 

<h1 align="center"> Insira os exercícios do novo plano: </h1>
	<form action="controle" align="center">
            <h3>Matricula do aluno: <input type="text" name="aluno" size="1"></h3>
                <h3>Exercícios: </h3>
                    <input type="checkbox" name="exercicio" value="supino-reto"> Supino reto
                    <input type="checkbox" name="exercicio" value="supino-inclinado"> Supino inclinado
                    <input type="checkbox" name="exercicio" value="voador"> Voador
                    <input type="checkbox" name="exercicio" value="puxada-frente"> Puxada frente
                    <input type="checkbox" name="exercicio" value="puxada-costas"> Puxada costas <br>
                    <input type="checkbox" name="exercicio" value="remada-baixa"> Remada baixa
                    <input type="checkbox" name="exercicio" value="rosca-direta"> Rosca direta
                    <input type="checkbox" name="exercicio" value="scott"> Scott
                    <input type="checkbox" name="exercicio" value="rosca-inversa"> Rosca inversa
                    <input type="checkbox" name="exercicio" value="puxada-corda"> Puxada corda<br>
                    <input type="checkbox" name="exercicio" value="puxada-lateral"> Puxada lateral
                    <input type="checkbox" name="exercicio" value="puxada-inversa"> Puxada inversa
                    <input type="checkbox" name="exercicio" value="agachamento"> Agachamento
                    <input type="checkbox" name="exercicio" value="abducao"> Abdução
                    <input type="checkbox" name="exercicio" value="aducao"> Adução <br>
	        <h3>Tempo: <input type="text" name="tempo" size="1"> segundos</h3>
                <h3>Séries: <input type="text" name="series" size="1"></h3>                
		<input type="hidden" value="PlanoLogica" name="logica"/>
		<h2 align="center"><input type="submit" value="ok">
		<input type="reset" value="limpar"></h2>
	</form>
        
        <table border="1" align="center">
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

	<c:forEach var="aluno" items="${alunos}" varStatus="id">
	<tr bgcolor="#${id.count % 2 == 0 ? '888888' : 'ffffff'}" >		
		<td> ${aluno.matricula} </td>
		<td> ${aluno.nome} </td>
		<td> <fmt:formatDate pattern="dd/MM/yyyy" value="${aluno.nascimento.time}"/>  </td>
                <td> <fmt:formatDate pattern="dd/MM/yyyy" value="${aluno.dataMatricula.time}"/>  </td>
                <td> ${aluno.sexo} </td>
                <td> ${aluno.interesse} </td>
                <td> ${aluno.peso} </td>
                <td> ${aluno.altura} </td>		
                <td>
			<a href="controle?logica=ListarPlano&matricula=${aluno.matricula}"><button>Plano</button></a>
		</td>
	</tr>
	</c:forEach>
	
        </table>
	
	<c:import url="rodape.jsp"></c:import>

        
    </body>
</html>
