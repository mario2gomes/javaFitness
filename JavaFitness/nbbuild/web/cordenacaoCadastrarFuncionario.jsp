<%-- 
    Document   : cordenacaoCadastrar
    Created on : 27/12/2015, 23:32:43
    Author     : mário
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de funcionários</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>        
       
                <h1 align="center"> Insira os dados do novo funcionário: </h1>
	<form action="controle">
		<h3 align="center">Nome: <input type="text" name="nome"></h3>
		<h3 align="center">Senha: <input type="password" name="senha"></h3>               
                <h3 align="center">Função: <select name="tipo">
                                                <option value="instrutor">Instrutor</option>
                                                <option value="cordenacao">Cordenação</option>
                <input type="hidden" value="funcionario" name="modo"/>
		<input type="hidden" value="Cadastrar" name="logica"/>
		<h2 align="center"><input type="submit" value="ok">
		<input type="reset" value="limpar"></h2>
	</form>
                
        <table border="1" align="center">
	<tr> 		
		<td> <b> MAT</b></td> 
		<td> <b> NOME </b> </td> 
		<td> <b> DATA DE ADM. </b> </td> 
                <td> <b> TIPO </b> </td>
	</tr>

	<c:forEach var="funcionario" items="${funcionarios}" varStatus="id">
	<tr bgcolor="#${id.count % 2 == 0 ? '888888' : 'ffffff'}" >		
		<td> ${funcionario.matricula} </td>
		<td> ${funcionario.nome} </td>
		<td> <fmt:formatDate pattern="dd/MM/yyyy" value="${funcionario.dataAdmissao.time}"/>  </td>
                <td> ${funcionario.tipo} </td>
                <td>
			<a href="controle?logica=Remover&matricula=${funcionario.matricula}&modo=funcionario"><button>Remover</button></a>
		</td>		
	</tr>
	</c:forEach>
	
        </table>
                
                <h2 align="center">                   
                    <a href="Relatorios?modo=funcionario"><button>Imprimir relatório com a relação de funcionarios</button></a><br>
                    <a href="entrada-cordenacao.jsp"> <button> Voltar</button></a><br></h2>

        <c:import url="/rodape.jsp"></c:import>        
        
    </body>
</html>
