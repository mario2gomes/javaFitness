/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Aluno;

/**
 *
 * @author mário
 */
public class InstrutorLogica implements Logica{
    
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
    AlunoDao ad = new AlunoDao();
    List <Aluno> alunos = ad.listar();		                   
    request.setAttribute("alunos", alunos);
    
    return "instrutor-aluno.jsp";
    }
}
