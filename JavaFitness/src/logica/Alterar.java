/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Aluno;

/**
 *
 * @author mário
 */
public class Alterar implements Logica{
    
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        if (request.getParameter("modo").equals("insere")){
                                    
            String matricula = request.getParameter("matricula");
            String nome = request.getParameter("nome");
            
            request.setAttribute("matricula", matricula);
            request.setAttribute("nome", nome);
            
            return "cordenacaoAlterarAluno.jsp";                    
        }
        if (request.getParameter("modo").equals("altera")){
         
            AlunoDao ad = new AlunoDao();
            ad.alterar(Integer.parseInt(request.getParameter("matricula").trim()), 
                    request.getParameter("interesse"), 
                    Double.parseDouble(request.getParameter("altura").replaceAll(",",".").trim()),
                    Double.parseDouble(request.getParameter("peso").replaceAll(",",".").trim()));
            
            return "controle?logica=Listar&modo=aluno";
        }
        else {
            return "controle?logica=Listar&modo=aluno";
        }
        
    }
}
