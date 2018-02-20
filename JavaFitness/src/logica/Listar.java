/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.FuncionarioDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Aluno;
import modelo.Funcionario;

/**
 *
 * @author mário
 */

public class Listar implements Logica{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
            if (request.getParameter("modo").equals("aluno")){
                AlunoDao ad = new AlunoDao();
		List <Aluno> alunos = ad.listar();		                               
		request.setAttribute("alunos", alunos);
		
		return "cordenacaoMatricularAluno.jsp";
            }
            if (request.getParameter("modo").equals("funcionario")){
                FuncionarioDao fd = new FuncionarioDao();
		List <Funcionario> funcionarios = fd.listar();                
                request.setAttribute("funcionarios", funcionarios);
		
		return "cordenacaoCadastrarFuncionario.jsp";
            }
            else{
                return "entrada-cordenacao.jsp";
            }
	}
}