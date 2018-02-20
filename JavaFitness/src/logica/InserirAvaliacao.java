/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AvaliacaoDao;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Avaliacao;

/**
 *
 * @author mário
 */
public class InserirAvaliacao implements Logica{

@Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        Avaliacao avaliacao = new Avaliacao();
        
        String date = request.getParameter("data");       
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); 
            java.util.Date data = formato.parse(date); 
            Calendar cal = Calendar.getInstance();
            cal.setTime(data);			
            avaliacao.setData(cal);
        
        AvaliacaoDao ad = new AvaliacaoDao();
        ad.inserir(avaliacao);
        
        JOptionPane.showMessageDialog(null, "Avaliação marcada com sucesso");
        
        return "entrada-aluno.jsp";
    }    
}