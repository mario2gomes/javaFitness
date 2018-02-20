/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.PlanoDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Plano;


/**
 *
 * @author mário
 */
public class ListarPlano implements Logica{
    
    @Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
            List <Plano> planos = new PlanoDao().listar(Integer.parseInt(request.getParameter("matricula")));

            String mensagem = "";
            
            if (planos.size()==0){
                mensagem = "Não há planos cadastrados, por favor marque uma nova avaliação";                                
            }
            else{                
		request.setAttribute("planos", planos);
            }                        
            
            request.setAttribute("msg", mensagem);
            
        return "planos.jsp";	
    }
    
}
