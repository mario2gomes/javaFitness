/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.AvaliacaoDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Avaliacao;

/**
 *
 * @author mário
 */
public class ListarAvaliacao implements Logica{
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
                
        List <Avaliacao> avaliacaos = new AvaliacaoDao().listar();
		
		request.setAttribute("avaliacaos", avaliacaos);
        
        return "instrutor-avaliacoes.jsp";
    }
}
