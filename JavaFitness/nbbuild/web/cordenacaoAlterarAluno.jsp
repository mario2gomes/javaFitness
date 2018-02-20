<%-- 
    Document   : cordenacaoAlterarAluno
    Created on : 29/12/2015, 12:25:52
    Author     : mário
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar dados de aluno</title>
    </head>
    <body>
        
        <c:import url="cabecalho.jsp"></c:import>                
        
<h1 align="center"> Insira os dados a serem alterados: </h1>
	
            <h3 align="center">Aluno: ${nome}</h3>
            
            <form action="controle">
                <h3 align="center">Interesse: <select name="interesse">
                                                <option value="hipertrofia">Hipertrofia</option>
                                                <option value="emagrecer">Emagrecer</option>
                                                <option value="fisioterapia">Fisioterapia</option>
                                                <option value="aerobico">Aeróbico</option>
                                                </select></h3>                
                <h3 align="center">Altura: <input type="text" name="altura"></h3>
                <h3 align="center">Peso: <input type="text" name="peso"></h3>
                <input type="hidden" value=${matricula} name="matricula"/>
		<input type="hidden" value="Alterar" name="logica"/>
                <input type="hidden" value="altera" name="modo"/>
		<h2 align="center"><input type="submit" value="ok">
		<input type="reset" value="limpar"></h2>
	</form>

    <c:import url="/rodape.jsp"></c:import>

    </body>
</html>
