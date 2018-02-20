<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- 
    Document   : cordenacaoMatricular
    Created on : 27/12/2015, 23:09:29
    Author     : mário
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matricular aluno</title>
    </head>
    <body>

	<c:import url="cabecalho.jsp"></c:import>		
        
        <h1 align="center"> Insira os dados do novo aluno: </h1>
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
			<a href="controle?logica=Remover&matricula=${aluno.matricula}&modo=aluno"><button>Remover</button></a>
		</td>
		<td>
			<a href="controle?logica=Alterar&matricula=${aluno.matricula}&nome=${aluno.nome}
                           &modo=insere"><button>Alterar</button></a>
		</td>
	</tr>
	</c:forEach>
	
        </table>
        
        <h2 align="center">
            <a href="Relatorios?modo=aluno"><button>Imprimir relatório com a relação de alunos</button></a><br>
            <a href="entrada-cordenacao.jsp"> <button> Voltar</button></a>
            <br></h2>
        
        <c:import url="rodape.jsp"></c:import>

    </body>
</html>
