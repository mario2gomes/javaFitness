/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.FuncionarioDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mário
 */
public class Remover implements Logica{

        @Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {                        
            
            if (request.getParameter("modo").equals("aluno")){
                AlunoDao ad = new AlunoDao();
                ad.remove(Integer.parseInt(request.getParameter("matricula").trim()));
            }
            if (request.getParameter("modo").equals("funcionario")){
                FuncionarioDao fd = new FuncionarioDao();
                fd.remove(Integer.parseInt(request.getParameter("matricula").trim()));
            }
            
            return "controle?logica=Listar";
        }    
}
