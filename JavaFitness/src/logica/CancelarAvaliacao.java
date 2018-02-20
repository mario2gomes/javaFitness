/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.AvaliacaoDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mário
 */
public class CancelarAvaliacao implements Logica{
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        AvaliacaoDao ad = new AvaliacaoDao();
                ad.remove(Integer.parseInt(request.getParameter("id").trim()));
        
        return "controle?logica=ListarAvaliacao";
    }
}
